import os
import sys
import uuid
import json
import logging
from typing import List, Dict, Optional
import numpy as np
import tkinter as tk
import nltk
nltk.download('punkt_tab')

# Ensure the parent directory is in the Python path
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Core model imports
from sjm import (
    SkillsExtract, 
    Freelancer, 
    Project, 
    Server, 
    normalize_csv, 
    MatchingEngine,
    CollaborativeModel
)

# Configure logging
logging.basicConfig(
    level=logging.DEBUG, 
    format='%(asctime)s - %(levelname)s: %(message)s',
    handlers=[
        logging.FileHandler('fiverr_integration.log'),
        logging.StreamHandler(sys.stdout)
    ]
)
logger = logging.getLogger(__name__)

class FiverrIntegrationModel:
    def __init__(self, csv_file_path: str):
        """
        Initialize the Fiverr Integration Model
        
        Args:
            csv_file_path (str): Path to the Fiverr freelancers CSV file
        """
        self.csv_file_path = csv_file_path
        self.skill_extractor = SkillsExtract()
        self.freelancers = None
        self.matching_engine = None
        
        # Fiverr-specific weights for the matching system
        self.custom_weights = {
            'content': 0.3,
            'collaborative': 0.4,  # Strong emphasis on total_sales & order_completion_rate
            'experience': 0.2,
            'rating': 0.1,
            'availability': 0.5,
        }

    def load_freelancers(self) -> List[Freelancer]:
        """
        Load and normalize freelancers from Fiverr CSV.

        Returns:
            List[Freelancer]: Normalized freelancer data.
        """
        try:
            fiverr_columns = {
                'id': 'seller_id',
                'username': 'username',
                'name': 'name',
                'job_title': 'job_title',
                'skills': 'skills',
                'experience': 'years_of_experience',
                'rating': 'order_completion_rate',
                'hourly_rate': 'base_price',
                'profile_url': 'profile_url',
                'availability': 'response_time',
                'total_sales': 'total_sales',
                'order_completion_rate': 'order_completion_rate',
                'total_sales': 'total_sales',
            }

            freelancers = normalize_csv(self.csv_file_path, fiverr_columns)

            for freelancer in freelancers:
                response_time = freelancer.availability
                if isinstance(response_time, str):
                    freelancer.availability = self._parse_availability(response_time)

            self.freelancers = freelancers
            logger.info(f"Loaded {len(freelancers)} freelancers from {self.csv_file_path}")
            return freelancers
        except FileNotFoundError:
            logger.error(f"CSV file not found: {self.csv_file_path}")
            raise
        except Exception as e:
            logger.error(f"Error loading freelancers: {e}")
            raise

    @staticmethod
    def _parse_availability(response_time: str) -> bool:
        if 'hours' in response_time.lower():
            hours = int(response_time.split()[0])
            return hours <= 24
        return False

    def collect_project_details(self) -> Project:
        try:
            logger.info("Starting project details collection")

            description = input("Enter Project Description: ").strip()
            inferred_skills = self.skill_extractor.extract_skills(description)
            logger.info(f"AI-extracted skills: {inferred_skills}")

            manual_skills_input = input("Add additional skills (comma-separated, or press Enter to skip): ").strip()
            manual_skills = [skill.strip() for skill in manual_skills_input.split(',')] if manual_skills_input else []
            required_skills = list(set(inferred_skills + manual_skills))

            min_budget = self._get_valid_input("Minimum Hourly Rate ($): ", float)
            max_budget = self._get_valid_input("Maximum Hourly Rate ($): ", float, lambda x: x >= min_budget)

            complexity = self._get_choice_input("Project Complexity (low/medium/high): ", ['low', 'medium', 'high'])
            timeline = self._get_valid_input("Project Timeline (days): ", int, lambda x: x > 0)

            project = Project(
                id=str(uuid.uuid4()),
                description=description,
                required_skills=required_skills,
                budget_range=(min_budget, max_budget),
                complexity=complexity,
                timeline=timeline,
            )
            logger.info("Project details collected successfully")
            return project
        except Exception as e:
            logger.error(f"Error collecting project details: {e}")
            raise

    @staticmethod
    def _get_valid_input(prompt, input_type, condition=lambda x: True):
        while True:
            try:
                value = input_type(input(prompt))
                if not condition(value):
                    raise ValueError("Invalid input.")
                return value
            except ValueError:
                print("Invalid input. Please try again.")

    @staticmethod
    def _get_choice_input(prompt, choices):
        while True:
            choice = input(prompt).strip().lower()
            if choice in choices:
                return choice
            print(f"Invalid choice. Please select from {', '.join(choices)}.")

    def customize_matching_engine(self):
        """
        Customizes the collaborative model for Fiverr to include total_sales and order_completion_rate.
        """
        class FiverrCollaborativeModel(CollaborativeModel):
            def train(self, project_data: List[Dict], freelancer_data: List[Freelancer]):
                """
                Train the collaborative model using total_sales and order_completion_rate for Fiverr.
                """
                self.freelancer_data = freelancer_data
                self.project_data = project_data

                num_freelancers = len(freelancer_data)
                if num_freelancers == 0:
                    self.interaction_matrix = np.zeros((num_freelancers, 2))
                    return

                # Use total_sales and order_completion_rate for interaction
                total_sales = np.array([freelancer.total_sales for freelancer in freelancer_data])
                order_completion_rate = np.array([freelancer.rating for freelancer in freelancer_data])

                # Normalize scores to [0, 1]
                total_sales_norm = (total_sales - total_sales.min()) / (total_sales.max() - total_sales.min())
                order_completion_rate_norm = order_completion_rate / 100.0

                # Combine into a 2-column matrix
                self.interaction_matrix = np.column_stack((total_sales_norm, order_completion_rate_norm))

            def predict(self, project_description: str, project_skills: List[str]) -> List[float]:
                """
                Predict match scores based on collaborative metrics.
                """
                if self.interaction_matrix is None or self.interaction_matrix.size == 0:
                    logger.warning("Interaction matrix is empty. Returning zero scores.")
                    return [0.0] * len(self.freelancer_data)

                # Compute average collaborative score
                scores = np.nanmean(self.interaction_matrix, axis=1)  # Average of total_sales and completion_rate
                return np.nan_to_num(scores).tolist()  # Replace NaN with 0

        return FiverrCollaborativeModel()

    def initialize_matching_engine(self):
        if not self.freelancers:
            self.load_freelancers()

        collaborative_model = self.customize_matching_engine()
        self.matching_engine = MatchingEngine(
            freelancers=self.freelancers,
            projects=[],  
            skill_extractor=self.skill_extractor,
            collaborative_model=collaborative_model  # Pass collaborative_model here
        )
        self.matching_engine.train_models()
        logger.info("Matching engine initialized with Fiverr-specific customization")

    def adjust_weights_for_project(self, project: Project) -> Dict[str, float]:
        """
        Dynamically adjust weights based on project complexity.
        """
        base_weights = self.custom_weights.copy()
        if project.complexity == 'high':
            base_weights['content'] += 0.1
            base_weights['collaborative'] += 0.1
        elif project.complexity == 'low':
            base_weights['experience'] -= 0.1
        return base_weights

    def filter_freelancers(self, project: Project, matches: List[Dict]) -> List[Dict]:
        """
        Detailed filtering of freelancers based on project-specific constraints.
        """
        filtered_matches = []
        logger.info(f"Starting freelancer filtering for project: {project.id}")
        logger.info(f"Project Budget Range: ${project.budget_range[0]} - ${project.budget_range[1]}")
        logger.info(f"Project Required Skills: {project.required_skills}")
        logger.info(f"Total matches before filtering: {len(matches)}")

        for match in matches:
            freelancer = match['freelancer']
            
            # Detailed logging for each freelancer
            logger.debug(f"Evaluating Freelancer: {freelancer.username}")
            logger.debug(f"  Job Title: {freelancer.job_title}")
            logger.debug(f"  Skills: {freelancer.skills}")
            logger.debug(f"  Hourly Rate: ${freelancer.hourly_rate}")
            logger.debug(f"  Availability: {freelancer.availability}")
            logger.debug(f"  Match Score: {match['combined_score']:.2f}")

            # Budget constraint check
            if freelancer.hourly_rate < project.budget_range[0] or freelancer.hourly_rate > project.budget_range[1]:
                logger.info(f"Excluded {freelancer.username}: Hourly rate ${freelancer.hourly_rate} out of budget range ${project.budget_range[0]} - ${project.budget_range[1]}.")
                continue
            
            # Availability check
            if not freelancer.availability:
                logger.info(f"Excluded {freelancer.username}: Unavailable (response time {freelancer.availability}).")
                continue
            
            # Skill matching
            overlap_count = self.matching_engine.refine_skill_matching(project.required_skills, freelancer.skills)
            logger.debug(f"Skill Matching for {freelancer.username}:")
            logger.debug(f"  Required Skills: {project.required_skills}")
            logger.debug(f"  Freelancer Skills: {freelancer.skills}")
            logger.debug(f"  Skill Overlap Count: {overlap_count}")

            if overlap_count < 2:
                logger.info(f"Excluded {freelancer.username}: Insufficient skill overlap ({overlap_count} matching skills).")
                continue
            
            # Passed all filters
            logger.info(f"ACCEPTED {freelancer.username} - Match Score: {match['combined_score']:.2f}")
            filtered_matches.append(match)

        # Final summary
        logger.info(f"Filtering Complete. Total matches after filtering: {len(filtered_matches)}")
        return filtered_matches

    def find_top_matches(self, project: Project, top_n: int = 5):
        """
        Find top matches with comprehensive logging.
        """
        try:
            logger.info("Starting Top Matches Discovery")
            logger.info(f"Project Details:")
            logger.info(f"  ID: {project.id}")
            logger.info(f"  Description: {project.description}")
            logger.info(f"  Required Skills: {project.required_skills}")
            logger.info(f"  Budget Range: ${project.budget_range[0]} - ${project.budget_range[1]}")
            logger.info(f"  Complexity: {project.complexity}")
            logger.info(f"  Timeline: {project.timeline} days")

            if not self.matching_engine:
                self.initialize_matching_engine()

            # Log initial weights
            logger.info("Initial Matching Weights:")
            for weight_type, weight_value in self.custom_weights.items():
                logger.info(f"  {weight_type}: {weight_value}")

            # Adjust weights based on project complexity
            self.custom_weights = self.adjust_weights_for_project(project)
            
            logger.info("Adjusted Matching Weights:")
            for weight_type, weight_value in self.custom_weights.items():
                logger.info(f"  {weight_type}: {weight_value}")

            # Generate all matches
            logger.info("Generating initial matches...")
            all_matches = self.matching_engine.match_freelancers(project, weights=self.custom_weights)
            
            logger.info(f"Total initial matches found: {len(all_matches)}")
            logger.info("Detailed Match Breakdown (before filtering):")
            for i, match in enumerate(all_matches, 1):
                freelancer = match['freelancer']
                logger.info(f"Match {i}:")
                logger.info(f"  Freelancer: {freelancer.username}")
                logger.info(f"  Job Title: {freelancer.job_title}")
                logger.info(f"  Combined Score: {match['combined_score']:.2f}")

            # Apply filtering
            filtered_matches = self.filter_freelancers(project, all_matches)

            # Get top N matches
            top_matches = filtered_matches[:top_n]
            
            logger.info("\n--- Top Matches Final Report ---")
            for i, match in enumerate(top_matches, 1):
                freelancer = match['freelancer']
                logger.info(f"Top Match {i}:")
                logger.info(f"  Freelancer: {freelancer.username}")
                logger.info(f"  Job Title: {freelancer.job_title}")
                logger.info(f"  Match Score: {match['combined_score']:.2f}")
                logger.info(f"  Hourly Rate: ${freelancer.hourly_rate}")
                logger.info(f"  Skills: {', '.join(freelancer.skills)}")

            logger.info(f"Found {len(top_matches)} top matches")
            return top_matches

        except Exception as e:
            logger.error(f"Error finding matches: {e}")
            raise

    def interview_freelancer(self, freelancer: Freelancer, project: Project):
        """
        Conduct interview with a selected freelancer.
        """
        logger.info(f"Starting interview for {freelancer.username}")

            # Initialize server
        server = Server()
        server.start_server()

        try:
            questions = []
            # Collect custom client message
            custom_question = input("Do you want to send a custom question to the freelancer? (yes/no): ")
            if custom_question.lower() == "yes":
                cl_questions = input("Enter your question (use commas if you want to ask more than one question): ")
                
                client_questions = [ques.strip() for ques in cl_questions.split(',') if cl_questions.strip]
                
                questions.extend(client_questions)
            else:
                None

            # Create interview context
            interview_context = {
                'project_id': project.id,
                'project_description': project.description,
                'freelancer_username': freelancer.username,
                'freelancer_job_title': freelancer.job_title,
                'freelancer_skills': freelancer.skills,
                'freelancer_id': freelancer.id,
                'hourly_rate': freelancer.hourly_rate,
            }

            # Send context to freelancer
            server.send_message(json.dumps(interview_context, indent=2))

            # Receive interview questions
            questions_json = server.receive_message()
            questions = json.loads(questions_json)
            
            print("Currently interviewing user, you will receive a response shortly....")

            # Wait for freelancer's answers
            answers_json = server.receive_message()
            answers = json.loads(answers_json)

            # Evaluate answers
            score = self.evaluate_answers(answers)

            # Prepare interview results
            interview_results = {
                'freelancer_username': freelancer.username,
                'freelancer_job_title': freelancer.job_title,
                'questions_and_answers': [{"question": q, "answer": a} for q, a in answers.items()],
                'score': score,
                'project_id': project.id
            }
            
            print(f"\nInterview Evaluation Complete for {freelancer.username}!\n")
            
            # Send results back to client
            server.send_message(json.dumps(interview_results, indent=2))

        finally:
            # Close the connection
            server.close_connection()
            print("Server closed after interview.")
        return f"Interview Results:\n{json.dumps(interview_results, indent=2)}"
            
    def evaluate_answers(self, answers: Dict[str, str]) -> float:
        # Simple evaluation based on response length (just for example)
        score = sum(len(answer) for answer in answers.values()) / 100
        return round(score, 2)
    
    def run_fiverr_matching(self):
        """
        Main workflow for Fiverr freelancer matching.
        """
        try:
            self.load_freelancers()
            project = self.collect_project_details()
            top_matches = self.find_top_matches(project)

            for match in top_matches:
                freelancer = match['freelancer']
                print(f"\nCandidate: {freelancer.name}")
                print(f"Match Score: {match['combined_score']:.2f}")
                print(f"Job Title: {freelancer.job_title}")
                print(f"Skills: {', '.join(freelancer.skills)}")
                print(f"Hourly Rate: {freelancer.hourly_rate}")
                print(f"Availability: {freelancer.availability}")

                if input("Interview this freelancer? (yes/no): ").strip().lower() == 'yes':
                    interview_results = self.interview_freelancer(freelancer, project)
                    print(f"Interview Results: {interview_results}")

                    if input("Hire this freelancer? (yes/no): ").strip().lower() == 'yes':
                        logger.info(f"Hired freelancer: {freelancer.username}")
                        break
        except Exception as e:
            logger.error(f"Fiverr matching process error: {e}")

def main():
    while True: 
        if len(sys.argv) > 1 and sys.argv[1] == "freelancer":
            # Run the freelancer logic
            from freelancer import main as freelancer_main
            freelancer_main("127.0.0.1", "65432")  # Use appropriate host/port
        else:
            print("Starting Fiverr Model")
                # Open a file dialog to let the user select a CSV file
            print("Kindly select fiverr's csv file to proceed...")
               # Entering the CSV file path manually
            csv_path = "fiverr_freelancers_realistic.csv"
            
            if not csv_path:
                print("No file selected. Exiting.")
                return
            
            if not os.path.isfile(csv_path):
                print(f"Error: The file '{csv_path}' does not exist. Please check and try again.")
                return

            try:
                # Initialize the Fiverr integration model
                fiverr_model = FiverrIntegrationModel(csv_path)
                
                # Run the Fiverr matching process
                fiverr_model.run_fiverr_matching()
            except Exception as e:
                logger.error(f"Fiverr integration failed: {e}") 
                  
        should_continue = input("\nWould you like to run the Fiverr Model process again? (yes/no): ").strip().lower()
        if should_continue != 'yes':
            print("Exiting program. Goodbye!")
            break 

if __name__ == "__main__":
    main()
