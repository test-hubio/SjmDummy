import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { IoClose } from 'react-icons/io5';
import { BsChatDots } from 'react-icons/bs';
import { BiLoaderAlt } from 'react-icons/bi';
import request from '../../utils/request.utils';
import './SjmBot.scss';

const SjmBot = () => {
  const navigate = useNavigate();
  const [isOpen, setIsOpen] = useState(false);
  const [step, setStep] = useState('initial');
  const [matches, setMatches] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [projectDetails, setProjectDetails] = useState({
    description: '',
    min_budget: 0,
    max_budget: 0
  });

  const [messages, setMessages] = useState([
    { type: 'bot', text: 'Hi! I can help you find the perfect seller for your project. Would you like to describe your project?' }
  ]);

  const [interview, setInterview] = useState({
    isActive: false,
    freelancerId: null,
    messages: []
  });
  
  const startInterview = async (freelancerId) => {
    try {
      const response = await request.post("/api/sjm/start-interview", {
        freelancer_id: freelancerId,
        project_details: projectDetails
      });

      setInterview({
        isActive: true,
        freelancerId,
        messages: [{
          type: 'bot',
          text: "Interview starting... Please wait for the freelancer's response"
        }]
      });

      // Add interview response to messages
      setMessages(prev => [...prev, {
        type: 'bot',
        text: 'Interview Results:',
        interview: response.data
      }]);

    } catch (err) {
      console.error(err);
    }
  };


  const handleSubmit = async (e) => {
    e.preventDefault();
    const text = e.target.elements.message.value.trim();
    if (!text) return;

    setMessages(prev => [...prev, { type: 'user', text }]);
    e.target.elements.message.value = '';

    if (step === 'initial') {
      setStep('budget');
      setProjectDetails(prev => ({ ...prev, description: text }));
      setMessages(prev => [...prev, { 
        type: 'bot', 
        text: 'Great! What\'s your budget range? Please enter minimum and maximum (e.g., 50-500)' 
      }]);
    } else if (step === 'budget') {
      const [min, max] = text.split('-').map(Number);
      if (isNaN(min) || isNaN(max)) {
        setMessages(prev => [...prev, { 
          type: 'bot', 
          text: 'Please enter a valid budget range (e.g., 50-500)' 
        }]);
        return;
      }

      setProjectDetails(prev => ({ 
        ...prev, 
        min_budget: min,
        max_budget: max 
      }));

      try {
        setIsLoading(true);
        const response = await request.post("/api/sjm/find-matches", {
          ...projectDetails,
          min_budget: min,
          max_budget: max
        });
        
        setMatches(response.data.matches);
        setStep('matches');
        setMessages(prev => [...prev, {
          type: 'bot',
          text: 'Here are some sellers that match your requirements:',
          matches: response.data.matches
        }]);
      } catch (err) {
        setMessages(prev => [...prev, { 
          type: 'bot', 
          text: 'Sorry, something went wrong. Please try again.' 
        }]);
      } finally {
        setIsLoading(false);
      }
    }
  };

  const startChat = async (sellerId) => {
    try {
      const { data } = await request.post("/api/conversation", { to: sellerId });
      navigate(`/message/${data.id}`);
    } catch (err) {
      console.error(err);
    }
  };

  return (
    <div className="sjm-bot">
      {isOpen && (
        <div className="bot-window">
          <div className="bot-header">
            <h3>{interview.isActive ? 'Interview in Progress' : 'SJM Assistant'}</h3>
            <button onClick={() => setIsOpen(false)}><IoClose /></button>
          </div>

          <div className="bot-messages">
            {messages.map((msg, idx) => (
              <div key={idx} className={`message ${msg.type}`}>
                <p>{msg.text}</p>
                {msg.matches && (
                  <div className="matches">
                    {msg.matches.map((match, i) => (
                      <div key={i} className="match-card">
                        <img src={match.img} alt={match.username} />
                        <h4>{match.username}</h4>
                        <p>{match.description}</p>
                        <p>Starting at ${match.price}</p>
                        <div className="actions">
                          <button onClick={() => startChat(match.id)}>
                            Message
                          </button>
                          <button onClick={() => startInterview(match.id)}>
                            Interview
                          </button>
                        </div>
                      </div>
                    ))}
                  </div>
                )}
                {msg.interview && (
                  <div className="interview-results">
                    <h4>Interview Score: {msg.interview.score}</h4>
                    <div className="qa-section">
                      {msg.interview.questions_and_answers.map((qa, i) => (
                        <div key={i} className="qa-item">
                          <p className="question">{qa.question}</p>
                          <p className="answer">{qa.answer}</p>
                        </div>
                      ))}
                    </div>
                  </div>
                )}
              </div>
            ))}
            {isLoading && (
              <div className="loading-indicator">
                <BiLoaderAlt className="spin" />
                <p>Finding matches...</p>
              </div>
            )}
          </div>

          <form onSubmit={handleSubmit} className="bot-input">
            <input
              name="message"
              type="text"
              placeholder={interview.isActive ? 
                "Type your interview question..." : 
                "Type your message..."}
              disabled={isLoading}
            />
            <button type="submit" disabled={isLoading}>
              {isLoading ? <BiLoaderAlt className="spin" /> : 'Send'}
            </button>
          </form>
        </div>
      )}
      <button className="bot-toggle" onClick={() => setIsOpen(!isOpen)}>
        <BsChatDots />
      </button>
    </div>
  );
};

export default SjmBot;