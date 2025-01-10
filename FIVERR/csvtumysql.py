import pandas as pd

def convert_csv_to_sql():
    try:
        # Read CSV
        df = pd.read_csv('fiverr_freelancers_realistic.csv')
        
        # Open SQL file for writing
        with open('fiverr_data.sql', 'w', encoding='utf-8') as f:
            # Write header
            f.write('USE fiverr_clone;\n\n')
            
            # Convert each row
            for _, row in df.iterrows():
                # Generate user insert
                user_sql = f"""INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('{row['username']}', 
                    '{row['username']}@example.com',
                    '$2b$10$randomhash',
                    '{row['profile_url']}',
                    '{row['location'].split(',')[1].strip()}',
                    '1234567890',
                    'I am a professional {row['job_title']} with {row['years_of_experience']} years of experience',
                    true);\n"""
                
                f.write(user_sql)
                
                # Generate gig insert using LAST_INSERT_ID()
                gig_sql = f"""INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional {row['job_title']} Services',
                    'Expert {row['job_title']} with focus on {row['skills']}',
                    {row['order_completion_rate']},
                    {row['total_sales']},
                    '{row['skills'].split(',')[0].strip()}',
                    {float(row['base_price'])},
                    '{row['profile_url']}',
                    24);\n\n"""
                
                f.write(gig_sql)
                
        print("SQL file generated successfully")
        
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    convert_csv_to_sql()