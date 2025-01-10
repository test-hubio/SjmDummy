USE fiverr_clone;

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('scott15', 
                    'scott15@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/scott15',
                    'United States',
                    '1234567890',
                    'I am a professional Animator with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Animator Services',
                    'Expert Animator with focus on Video & Animation, Graphic Design',
                    90.56,
                    486,
                    'Video & Animation',
                    46.4,
                    'https://www.fiverr.com/scott15',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('virginia92', 
                    'virginia92@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/virginia92',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Copywriter with 6 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Copywriter Services',
                    'Expert Copywriter with focus on Writing & Translation, Lifestyle',
                    95.93,
                    794,
                    'Writing & Translation',
                    16.31,
                    'https://www.fiverr.com/virginia92',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('amy76', 
                    'amy76@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/amy76',
                    'United States',
                    '1234567890',
                    'I am a professional SEO Specialist with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional SEO Specialist Services',
                    'Expert SEO Specialist with focus on Digital Marketing',
                    98.48,
                    790,
                    'Digital Marketing',
                    21.27,
                    'https://www.fiverr.com/amy76',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('hmorgan', 
                    'hmorgan@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/hmorgan',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Financial Analyst with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Financial Analyst Services',
                    'Expert Financial Analyst with focus on Business',
                    96.11,
                    966,
                    'Business',
                    48.16,
                    'https://www.fiverr.com/hmorgan',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('amber63', 
                    'amber63@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/amber63',
                    'United States',
                    '1234567890',
                    'I am a professional Animator with 10 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Animator Services',
                    'Expert Animator with focus on Video & Animation, Business',
                    99.41,
                    623,
                    'Video & Animation',
                    77.09,
                    'https://www.fiverr.com/amber63',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('xmartin', 
                    'xmartin@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/xmartin',
                    'United States',
                    '1234567890',
                    'I am a professional Personal Shopper with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Personal Shopper Services',
                    'Expert Personal Shopper with focus on Lifestyle',
                    98.88,
                    218,
                    'Lifestyle',
                    37.99,
                    'https://www.fiverr.com/xmartin',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('johnsondawn', 
                    'johnsondawn@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/johnsondawn',
                    'United States',
                    '1234567890',
                    'I am a professional Data Analyst with 4 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Data Analyst Services',
                    'Expert Data Analyst with focus on Programming & Tech',
                    96.27,
                    122,
                    'Programming & Tech',
                    31.24,
                    'https://www.fiverr.com/johnsondawn',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('julie82', 
                    'julie82@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/julie82',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Content Writer with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Content Writer Services',
                    'Expert Content Writer with focus on Writing & Translation',
                    99.73,
                    564,
                    'Writing & Translation',
                    93.92,
                    'https://www.fiverr.com/julie82',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('hernandezmichelle', 
                    'hernandezmichelle@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/hernandezmichelle',
                    'India',
                    '1234567890',
                    'I am a professional Brand Identity Designer with 5 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Brand Identity Designer Services',
                    'Expert Brand Identity Designer with focus on Graphic Design',
                    98.98,
                    297,
                    'Graphic Design',
                    17.5,
                    'https://www.fiverr.com/hernandezmichelle',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('akelley', 
                    'akelley@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/akelley',
                    'India',
                    '1234567890',
                    'I am a professional Life Coach with 1 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Life Coach Services',
                    'Expert Life Coach with focus on Lifestyle',
                    95.2,
                    414,
                    'Lifestyle',
                    44.74,
                    'https://www.fiverr.com/akelley',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('websterbruce', 
                    'websterbruce@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/websterbruce',
                    'India',
                    '1234567890',
                    'I am a professional Data Analyst with 2 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Data Analyst Services',
                    'Expert Data Analyst with focus on Programming & Tech, Digital Marketing',
                    95.65,
                    303,
                    'Programming & Tech',
                    78.35,
                    'https://www.fiverr.com/websterbruce',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('johncarter', 
                    'johncarter@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/johncarter',
                    'United States',
                    '1234567890',
                    'I am a professional Content Strategist with 6 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Content Strategist Services',
                    'Expert Content Strategist with focus on Digital Marketing, Graphic Design',
                    96.35,
                    132,
                    'Digital Marketing',
                    15.81,
                    'https://www.fiverr.com/johncarter',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('perezdaniel', 
                    'perezdaniel@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/perezdaniel',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Social Media Manager with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Social Media Manager Services',
                    'Expert Social Media Manager with focus on Digital Marketing, Video & Animation',
                    94.11,
                    395,
                    'Digital Marketing',
                    16.05,
                    'https://www.fiverr.com/perezdaniel',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('stacycunningham', 
                    'stacycunningham@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/stacycunningham',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Voice Over Artist with 7 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Voice Over Artist Services',
                    'Expert Voice Over Artist with focus on Music & Audio, Programming & Tech',
                    99.96,
                    437,
                    'Music & Audio',
                    24.88,
                    'https://www.fiverr.com/stacycunningham',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('michael50', 
                    'michael50@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/michael50',
                    'United States',
                    '1234567890',
                    'I am a professional Financial Analyst with 6 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Financial Analyst Services',
                    'Expert Financial Analyst with focus on Business',
                    96.87,
                    714,
                    'Business',
                    15.11,
                    'https://www.fiverr.com/michael50',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('wongsavannah', 
                    'wongsavannah@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/wongsavannah',
                    'United States',
                    '1234567890',
                    'I am a professional Life Coach with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Life Coach Services',
                    'Expert Life Coach with focus on Lifestyle, Business',
                    98.46,
                    922,
                    'Lifestyle',
                    79.29,
                    'https://www.fiverr.com/wongsavannah',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('evan77', 
                    'evan77@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/evan77',
                    'India',
                    '1234567890',
                    'I am a professional Data Analyst with 2 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Data Analyst Services',
                    'Expert Data Analyst with focus on Programming & Tech',
                    91.98,
                    772,
                    'Programming & Tech',
                    10.44,
                    'https://www.fiverr.com/evan77',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('bmartinez', 
                    'bmartinez@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/bmartinez',
                    'India',
                    '1234567890',
                    'I am a professional Translator with 6 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Translator Services',
                    'Expert Translator with focus on Writing & Translation, Music & Audio',
                    93.78,
                    776,
                    'Writing & Translation',
                    58.94,
                    'https://www.fiverr.com/bmartinez',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('hannanathan', 
                    'hannanathan@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/hannanathan',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Brand Identity Designer with 3 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Brand Identity Designer Services',
                    'Expert Brand Identity Designer with focus on Graphic Design',
                    95.28,
                    684,
                    'Graphic Design',
                    81.55,
                    'https://www.fiverr.com/hannanathan',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('pmcdaniel', 
                    'pmcdaniel@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/pmcdaniel',
                    'India',
                    '1234567890',
                    'I am a professional Copywriter with 1 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Copywriter Services',
                    'Expert Copywriter with focus on Writing & Translation',
                    99.3,
                    862,
                    'Writing & Translation',
                    94.43,
                    'https://www.fiverr.com/pmcdaniel',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('brandybeck', 
                    'brandybeck@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/brandybeck',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Content Writer with 5 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Content Writer Services',
                    'Expert Content Writer with focus on Writing & Translation, Digital Marketing',
                    99.29,
                    922,
                    'Writing & Translation',
                    15.98,
                    'https://www.fiverr.com/brandybeck',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('rasmussencassie', 
                    'rasmussencassie@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/rasmussencassie',
                    'United States',
                    '1234567890',
                    'I am a professional SEO Specialist with 2 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional SEO Specialist Services',
                    'Expert SEO Specialist with focus on Digital Marketing, Programming & Tech',
                    90.52,
                    221,
                    'Digital Marketing',
                    97.13,
                    'https://www.fiverr.com/rasmussencassie',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('jevans', 
                    'jevans@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/jevans',
                    'United States',
                    '1234567890',
                    'I am a professional Illustrator with 7 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Illustrator Services',
                    'Expert Illustrator with focus on Graphic Design, Video & Animation',
                    99.88,
                    849,
                    'Graphic Design',
                    47.31,
                    'https://www.fiverr.com/jevans',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('markgilbert', 
                    'markgilbert@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/markgilbert',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Business Consultant with 4 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Business Consultant Services',
                    'Expert Business Consultant with focus on Business, Graphic Design',
                    94.93,
                    747,
                    'Business',
                    34.54,
                    'https://www.fiverr.com/markgilbert',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('fpatterson', 
                    'fpatterson@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/fpatterson',
                    'United States',
                    '1234567890',
                    'I am a professional Motion Graphics Designer with 10 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Motion Graphics Designer Services',
                    'Expert Motion Graphics Designer with focus on Video & Animation',
                    94.31,
                    384,
                    'Video & Animation',
                    35.74,
                    'https://www.fiverr.com/fpatterson',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('mcooper', 
                    'mcooper@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/mcooper',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Illustrator with 4 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Illustrator Services',
                    'Expert Illustrator with focus on Graphic Design',
                    92.38,
                    919,
                    'Graphic Design',
                    33.16,
                    'https://www.fiverr.com/mcooper',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('christinelane', 
                    'christinelane@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/christinelane',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional App Developer with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional App Developer Services',
                    'Expert App Developer with focus on Programming & Tech',
                    90.23,
                    405,
                    'Programming & Tech',
                    5.87,
                    'https://www.fiverr.com/christinelane',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('munozmisty', 
                    'munozmisty@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/munozmisty',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Fitness Trainer with 6 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Fitness Trainer Services',
                    'Expert Fitness Trainer with focus on Lifestyle, Music & Audio',
                    93.03,
                    233,
                    'Lifestyle',
                    79.04,
                    'https://www.fiverr.com/munozmisty',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('areyes', 
                    'areyes@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/areyes',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Data Analyst with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Data Analyst Services',
                    'Expert Data Analyst with focus on Programming & Tech, Lifestyle',
                    92.12,
                    617,
                    'Programming & Tech',
                    88.83,
                    'https://www.fiverr.com/areyes',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('savila', 
                    'savila@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/savila',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Illustrator with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Illustrator Services',
                    'Expert Illustrator with focus on Graphic Design',
                    94.69,
                    259,
                    'Graphic Design',
                    20.54,
                    'https://www.fiverr.com/savila',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('bsantos', 
                    'bsantos@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/bsantos',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Video Editor with 4 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Video Editor Services',
                    'Expert Video Editor with focus on Video & Animation',
                    90.52,
                    914,
                    'Video & Animation',
                    65.42,
                    'https://www.fiverr.com/bsantos',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('barrjuan', 
                    'barrjuan@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/barrjuan',
                    'India',
                    '1234567890',
                    'I am a professional Life Coach with 2 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Life Coach Services',
                    'Expert Life Coach with focus on Lifestyle',
                    95.21,
                    453,
                    'Lifestyle',
                    15.68,
                    'https://www.fiverr.com/barrjuan',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('dwilliams', 
                    'dwilliams@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/dwilliams',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Business Consultant with 3 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Business Consultant Services',
                    'Expert Business Consultant with focus on Business, Digital Marketing',
                    96.86,
                    507,
                    'Business',
                    86.34,
                    'https://www.fiverr.com/dwilliams',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('jpatel', 
                    'jpatel@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/jpatel',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Translator with 6 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Translator Services',
                    'Expert Translator with focus on Writing & Translation, Digital Marketing',
                    96.18,
                    849,
                    'Writing & Translation',
                    88.95,
                    'https://www.fiverr.com/jpatel',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('samanthamorris', 
                    'samanthamorris@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/samanthamorris',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Motion Graphics Designer with 1 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Motion Graphics Designer Services',
                    'Expert Motion Graphics Designer with focus on Video & Animation, Programming & Tech',
                    90.4,
                    118,
                    'Video & Animation',
                    97.14,
                    'https://www.fiverr.com/samanthamorris',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('pittsmarc', 
                    'pittsmarc@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/pittsmarc',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Copywriter with 5 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Copywriter Services',
                    'Expert Copywriter with focus on Writing & Translation, Video & Animation',
                    96.91,
                    24,
                    'Writing & Translation',
                    11.96,
                    'https://www.fiverr.com/pittsmarc',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('tonimorgan', 
                    'tonimorgan@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/tonimorgan',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Financial Analyst with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Financial Analyst Services',
                    'Expert Financial Analyst with focus on Business, Music & Audio',
                    96.85,
                    937,
                    'Business',
                    83.96,
                    'https://www.fiverr.com/tonimorgan',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('ryanjones', 
                    'ryanjones@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/ryanjones',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Logo Designer with 2 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Logo Designer Services',
                    'Expert Logo Designer with focus on Graphic Design',
                    99.09,
                    800,
                    'Graphic Design',
                    64.34,
                    'https://www.fiverr.com/ryanjones',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('cruzjoseph', 
                    'cruzjoseph@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/cruzjoseph',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Market Researcher with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Market Researcher Services',
                    'Expert Market Researcher with focus on Business',
                    90.5,
                    493,
                    'Business',
                    34.94,
                    'https://www.fiverr.com/cruzjoseph',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('danielmorrow', 
                    'danielmorrow@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/danielmorrow',
                    'United States',
                    '1234567890',
                    'I am a professional Fitness Trainer with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Fitness Trainer Services',
                    'Expert Fitness Trainer with focus on Lifestyle, Writing & Translation',
                    94.14,
                    493,
                    'Lifestyle',
                    35.22,
                    'https://www.fiverr.com/danielmorrow',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('jason72', 
                    'jason72@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/jason72',
                    'United States',
                    '1234567890',
                    'I am a professional App Developer with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional App Developer Services',
                    'Expert App Developer with focus on Programming & Tech, Digital Marketing',
                    96.4,
                    99,
                    'Programming & Tech',
                    49.93,
                    'https://www.fiverr.com/jason72',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('sesparza', 
                    'sesparza@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/sesparza',
                    'United States',
                    '1234567890',
                    'I am a professional SEO Specialist with 5 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional SEO Specialist Services',
                    'Expert SEO Specialist with focus on Digital Marketing',
                    96.75,
                    133,
                    'Digital Marketing',
                    30.29,
                    'https://www.fiverr.com/sesparza',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('yzimmerman', 
                    'yzimmerman@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/yzimmerman',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Illustrator with 5 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Illustrator Services',
                    'Expert Illustrator with focus on Graphic Design',
                    97.31,
                    223,
                    'Graphic Design',
                    8.09,
                    'https://www.fiverr.com/yzimmerman',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('gfischer', 
                    'gfischer@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/gfischer',
                    'India',
                    '1234567890',
                    'I am a professional Video Editor with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Video Editor Services',
                    'Expert Video Editor with focus on Video & Animation',
                    97.89,
                    692,
                    'Video & Animation',
                    52.5,
                    'https://www.fiverr.com/gfischer',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('johnsonterri', 
                    'johnsonterri@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/johnsonterri',
                    'United States',
                    '1234567890',
                    'I am a professional Audio Engineer with 10 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Audio Engineer Services',
                    'Expert Audio Engineer with focus on Music & Audio',
                    91.33,
                    701,
                    'Music & Audio',
                    24.83,
                    'https://www.fiverr.com/johnsonterri',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('garciajason', 
                    'garciajason@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/garciajason',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Web Developer with 3 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Web Developer Services',
                    'Expert Web Developer with focus on Programming & Tech',
                    94.39,
                    81,
                    'Programming & Tech',
                    62.23,
                    'https://www.fiverr.com/garciajason',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('henry94', 
                    'henry94@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/henry94',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Audio Engineer with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Audio Engineer Services',
                    'Expert Audio Engineer with focus on Music & Audio',
                    91.93,
                    170,
                    'Music & Audio',
                    81.43,
                    'https://www.fiverr.com/henry94',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('cheryljohnson', 
                    'cheryljohnson@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/cheryljohnson',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Motion Graphics Designer with 2 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Motion Graphics Designer Services',
                    'Expert Motion Graphics Designer with focus on Video & Animation, Writing & Translation',
                    91.02,
                    320,
                    'Video & Animation',
                    75.01,
                    'https://www.fiverr.com/cheryljohnson',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('johnsonmichael', 
                    'johnsonmichael@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/johnsonmichael',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Copywriter with 7 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Copywriter Services',
                    'Expert Copywriter with focus on Writing & Translation, Programming & Tech',
                    96.54,
                    55,
                    'Writing & Translation',
                    14.45,
                    'https://www.fiverr.com/johnsonmichael',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('hensoncharles', 
                    'hensoncharles@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/hensoncharles',
                    'United States',
                    '1234567890',
                    'I am a professional App Developer with 5 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional App Developer Services',
                    'Expert App Developer with focus on Programming & Tech',
                    93.16,
                    983,
                    'Programming & Tech',
                    15.07,
                    'https://www.fiverr.com/hensoncharles',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('kimberly78', 
                    'kimberly78@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/kimberly78',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Animator with 10 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Animator Services',
                    'Expert Animator with focus on Video & Animation',
                    97.83,
                    444,
                    'Video & Animation',
                    27.21,
                    'https://www.fiverr.com/kimberly78',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('kevinpace', 
                    'kevinpace@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/kevinpace',
                    'United States',
                    '1234567890',
                    'I am a professional Content Strategist with 7 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Content Strategist Services',
                    'Expert Content Strategist with focus on Digital Marketing, Business',
                    95.71,
                    582,
                    'Digital Marketing',
                    79.54,
                    'https://www.fiverr.com/kevinpace',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('ksmith', 
                    'ksmith@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/ksmith',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Brand Identity Designer with 3 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Brand Identity Designer Services',
                    'Expert Brand Identity Designer with focus on Graphic Design, Digital Marketing',
                    96.17,
                    562,
                    'Graphic Design',
                    84.51,
                    'https://www.fiverr.com/ksmith',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('cynthia53', 
                    'cynthia53@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/cynthia53',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Fitness Trainer with 1 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Fitness Trainer Services',
                    'Expert Fitness Trainer with focus on Lifestyle',
                    91.28,
                    654,
                    'Lifestyle',
                    25.93,
                    'https://www.fiverr.com/cynthia53',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('jennifer44', 
                    'jennifer44@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/jennifer44',
                    'India',
                    '1234567890',
                    'I am a professional Translator with 1 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Translator Services',
                    'Expert Translator with focus on Writing & Translation, Business',
                    90.66,
                    762,
                    'Writing & Translation',
                    46.72,
                    'https://www.fiverr.com/jennifer44',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('emmawhite', 
                    'emmawhite@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/emmawhite',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Motion Graphics Designer with 10 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Motion Graphics Designer Services',
                    'Expert Motion Graphics Designer with focus on Video & Animation',
                    97.96,
                    318,
                    'Video & Animation',
                    40.58,
                    'https://www.fiverr.com/emmawhite',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('john41', 
                    'john41@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/john41',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional SEO Specialist with 3 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional SEO Specialist Services',
                    'Expert SEO Specialist with focus on Digital Marketing, Programming & Tech',
                    93.48,
                    492,
                    'Digital Marketing',
                    81.91,
                    'https://www.fiverr.com/john41',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('lorraineerickson', 
                    'lorraineerickson@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/lorraineerickson',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Web Developer with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Web Developer Services',
                    'Expert Web Developer with focus on Programming & Tech',
                    98.56,
                    920,
                    'Programming & Tech',
                    57.09,
                    'https://www.fiverr.com/lorraineerickson',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('frankwilson', 
                    'frankwilson@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/frankwilson',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Financial Analyst with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Financial Analyst Services',
                    'Expert Financial Analyst with focus on Business',
                    92.51,
                    212,
                    'Business',
                    9.11,
                    'https://www.fiverr.com/frankwilson',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('pamelarowe', 
                    'pamelarowe@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/pamelarowe',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Motion Graphics Designer with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Motion Graphics Designer Services',
                    'Expert Motion Graphics Designer with focus on Video & Animation',
                    92.35,
                    635,
                    'Video & Animation',
                    38.4,
                    'https://www.fiverr.com/pamelarowe',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('nelsontravis', 
                    'nelsontravis@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/nelsontravis',
                    'United States',
                    '1234567890',
                    'I am a professional Market Researcher with 4 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Market Researcher Services',
                    'Expert Market Researcher with focus on Business',
                    93.39,
                    239,
                    'Business',
                    79.89,
                    'https://www.fiverr.com/nelsontravis',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('barnesdonald', 
                    'barnesdonald@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/barnesdonald',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Copywriter with 7 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Copywriter Services',
                    'Expert Copywriter with focus on Writing & Translation',
                    92.69,
                    19,
                    'Writing & Translation',
                    37.42,
                    'https://www.fiverr.com/barnesdonald',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('jeffreycamacho', 
                    'jeffreycamacho@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/jeffreycamacho',
                    'United States',
                    '1234567890',
                    'I am a professional Life Coach with 5 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Life Coach Services',
                    'Expert Life Coach with focus on Lifestyle',
                    99.86,
                    119,
                    'Lifestyle',
                    19.0,
                    'https://www.fiverr.com/jeffreycamacho',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('oharris', 
                    'oharris@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/oharris',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Voice Over Artist with 3 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Voice Over Artist Services',
                    'Expert Voice Over Artist with focus on Music & Audio, Video & Animation',
                    97.94,
                    94,
                    'Music & Audio',
                    84.09,
                    'https://www.fiverr.com/oharris',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('sellersstephanie', 
                    'sellersstephanie@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/sellersstephanie',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Illustrator with 10 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Illustrator Services',
                    'Expert Illustrator with focus on Graphic Design, Lifestyle',
                    90.5,
                    171,
                    'Graphic Design',
                    39.72,
                    'https://www.fiverr.com/sellersstephanie',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('stephanie26', 
                    'stephanie26@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/stephanie26',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Motion Graphics Designer with 7 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Motion Graphics Designer Services',
                    'Expert Motion Graphics Designer with focus on Video & Animation, Business',
                    95.56,
                    179,
                    'Video & Animation',
                    71.61,
                    'https://www.fiverr.com/stephanie26',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('vasquezanthony', 
                    'vasquezanthony@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/vasquezanthony',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional App Developer with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional App Developer Services',
                    'Expert App Developer with focus on Programming & Tech',
                    96.29,
                    693,
                    'Programming & Tech',
                    45.06,
                    'https://www.fiverr.com/vasquezanthony',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('tammy91', 
                    'tammy91@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/tammy91',
                    'Nigeria',
                    '1234567890',
                    'I am a professional App Developer with 4 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional App Developer Services',
                    'Expert App Developer with focus on Programming & Tech',
                    92.76,
                    879,
                    'Programming & Tech',
                    30.55,
                    'https://www.fiverr.com/tammy91',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('kayla24', 
                    'kayla24@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/kayla24',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Copywriter with 3 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Copywriter Services',
                    'Expert Copywriter with focus on Writing & Translation',
                    94.12,
                    191,
                    'Writing & Translation',
                    98.55,
                    'https://www.fiverr.com/kayla24',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('suzanneyoung', 
                    'suzanneyoung@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/suzanneyoung',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Brand Identity Designer with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Brand Identity Designer Services',
                    'Expert Brand Identity Designer with focus on Graphic Design',
                    92.3,
                    822,
                    'Graphic Design',
                    40.56,
                    'https://www.fiverr.com/suzanneyoung',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('bryanblackburn', 
                    'bryanblackburn@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/bryanblackburn',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Life Coach with 7 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Life Coach Services',
                    'Expert Life Coach with focus on Lifestyle, Graphic Design',
                    98.31,
                    975,
                    'Lifestyle',
                    16.7,
                    'https://www.fiverr.com/bryanblackburn',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('michael82', 
                    'michael82@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/michael82',
                    'United States',
                    '1234567890',
                    'I am a professional SEO Specialist with 10 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional SEO Specialist Services',
                    'Expert SEO Specialist with focus on Digital Marketing',
                    93.2,
                    620,
                    'Digital Marketing',
                    74.92,
                    'https://www.fiverr.com/michael82',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('justin42', 
                    'justin42@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/justin42',
                    'India',
                    '1234567890',
                    'I am a professional SEO Specialist with 6 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional SEO Specialist Services',
                    'Expert SEO Specialist with focus on Digital Marketing',
                    93.43,
                    25,
                    'Digital Marketing',
                    62.86,
                    'https://www.fiverr.com/justin42',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('robertslisa', 
                    'robertslisa@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/robertslisa',
                    'India',
                    '1234567890',
                    'I am a professional Brand Identity Designer with 10 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Brand Identity Designer Services',
                    'Expert Brand Identity Designer with focus on Graphic Design',
                    94.15,
                    339,
                    'Graphic Design',
                    69.92,
                    'https://www.fiverr.com/robertslisa',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('parkswilliam', 
                    'parkswilliam@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/parkswilliam',
                    'India',
                    '1234567890',
                    'I am a professional Copywriter with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Copywriter Services',
                    'Expert Copywriter with focus on Writing & Translation',
                    97.23,
                    744,
                    'Writing & Translation',
                    71.66,
                    'https://www.fiverr.com/parkswilliam',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('scottsandoval', 
                    'scottsandoval@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/scottsandoval',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Web Developer with 6 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Web Developer Services',
                    'Expert Web Developer with focus on Programming & Tech',
                    90.08,
                    998,
                    'Programming & Tech',
                    53.16,
                    'https://www.fiverr.com/scottsandoval',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('nathaniel77', 
                    'nathaniel77@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/nathaniel77',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Logo Designer with 7 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Logo Designer Services',
                    'Expert Logo Designer with focus on Graphic Design',
                    92.36,
                    989,
                    'Graphic Design',
                    61.33,
                    'https://www.fiverr.com/nathaniel77',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('xphillips', 
                    'xphillips@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/xphillips',
                    'India',
                    '1234567890',
                    'I am a professional Audio Engineer with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Audio Engineer Services',
                    'Expert Audio Engineer with focus on Music & Audio',
                    97.71,
                    670,
                    'Music & Audio',
                    57.13,
                    'https://www.fiverr.com/xphillips',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('christianschroeder', 
                    'christianschroeder@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/christianschroeder',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Motion Graphics Designer with 6 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Motion Graphics Designer Services',
                    'Expert Motion Graphics Designer with focus on Video & Animation',
                    91.23,
                    280,
                    'Video & Animation',
                    83.44,
                    'https://www.fiverr.com/christianschroeder',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('wardfrancisco', 
                    'wardfrancisco@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/wardfrancisco',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Music Producer with 5 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Music Producer Services',
                    'Expert Music Producer with focus on Music & Audio, Programming & Tech',
                    94.0,
                    381,
                    'Music & Audio',
                    83.14,
                    'https://www.fiverr.com/wardfrancisco',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('brian73', 
                    'brian73@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/brian73',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Animator with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Animator Services',
                    'Expert Animator with focus on Video & Animation',
                    90.3,
                    648,
                    'Video & Animation',
                    41.12,
                    'https://www.fiverr.com/brian73',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('goodmanjason', 
                    'goodmanjason@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/goodmanjason',
                    'India',
                    '1234567890',
                    'I am a professional Personal Shopper with 6 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Personal Shopper Services',
                    'Expert Personal Shopper with focus on Lifestyle',
                    99.98,
                    108,
                    'Lifestyle',
                    55.38,
                    'https://www.fiverr.com/goodmanjason',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('xcooley', 
                    'xcooley@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/xcooley',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Video Editor with 2 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Video Editor Services',
                    'Expert Video Editor with focus on Video & Animation, Music & Audio',
                    92.31,
                    436,
                    'Video & Animation',
                    48.15,
                    'https://www.fiverr.com/xcooley',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('raven00', 
                    'raven00@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/raven00',
                    'United States',
                    '1234567890',
                    'I am a professional Video Editor with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Video Editor Services',
                    'Expert Video Editor with focus on Video & Animation, Digital Marketing',
                    91.64,
                    997,
                    'Video & Animation',
                    31.48,
                    'https://www.fiverr.com/raven00',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('markberry', 
                    'markberry@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/markberry',
                    'India',
                    '1234567890',
                    'I am a professional Personal Shopper with 3 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Personal Shopper Services',
                    'Expert Personal Shopper with focus on Lifestyle',
                    96.08,
                    432,
                    'Lifestyle',
                    50.57,
                    'https://www.fiverr.com/markberry',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('lori41', 
                    'lori41@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/lori41',
                    'India',
                    '1234567890',
                    'I am a professional Business Consultant with 1 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Business Consultant Services',
                    'Expert Business Consultant with focus on Business, Video & Animation',
                    92.81,
                    801,
                    'Business',
                    9.29,
                    'https://www.fiverr.com/lori41',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('daniel73', 
                    'daniel73@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/daniel73',
                    'United States',
                    '1234567890',
                    'I am a professional Personal Shopper with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Personal Shopper Services',
                    'Expert Personal Shopper with focus on Lifestyle, Programming & Tech',
                    90.61,
                    344,
                    'Lifestyle',
                    26.18,
                    'https://www.fiverr.com/daniel73',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('sandra39', 
                    'sandra39@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/sandra39',
                    'United States',
                    '1234567890',
                    'I am a professional Animator with 9 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Animator Services',
                    'Expert Animator with focus on Video & Animation',
                    92.01,
                    430,
                    'Video & Animation',
                    69.44,
                    'https://www.fiverr.com/sandra39',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('susan71', 
                    'susan71@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/susan71',
                    'Nigeria',
                    '1234567890',
                    'I am a professional Fitness Trainer with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Fitness Trainer Services',
                    'Expert Fitness Trainer with focus on Lifestyle',
                    92.89,
                    153,
                    'Lifestyle',
                    72.75,
                    'https://www.fiverr.com/susan71',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('hortonjulia', 
                    'hortonjulia@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/hortonjulia',
                    'United States',
                    '1234567890',
                    'I am a professional Life Coach with 1 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Life Coach Services',
                    'Expert Life Coach with focus on Lifestyle',
                    95.7,
                    523,
                    'Lifestyle',
                    99.03,
                    'https://www.fiverr.com/hortonjulia',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('tnguyen', 
                    'tnguyen@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/tnguyen',
                    'United Kingdom',
                    '1234567890',
                    'I am a professional Copywriter with 2 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Copywriter Services',
                    'Expert Copywriter with focus on Writing & Translation',
                    94.25,
                    948,
                    'Writing & Translation',
                    84.77,
                    'https://www.fiverr.com/tnguyen',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('steelekathy', 
                    'steelekathy@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/steelekathy',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Fitness Trainer with 10 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Fitness Trainer Services',
                    'Expert Fitness Trainer with focus on Lifestyle, Graphic Design',
                    99.7,
                    595,
                    'Lifestyle',
                    67.29,
                    'https://www.fiverr.com/steelekathy',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('meyerschad', 
                    'meyerschad@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/meyerschad',
                    'India',
                    '1234567890',
                    'I am a professional Social Media Manager with 5 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Social Media Manager Services',
                    'Expert Social Media Manager with focus on Digital Marketing',
                    90.19,
                    627,
                    'Digital Marketing',
                    80.92,
                    'https://www.fiverr.com/meyerschad',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('rioskevin', 
                    'rioskevin@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/rioskevin',
                    'India',
                    '1234567890',
                    'I am a professional App Developer with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional App Developer Services',
                    'Expert App Developer with focus on Programming & Tech, Video & Animation',
                    90.85,
                    253,
                    'Programming & Tech',
                    67.36,
                    'https://www.fiverr.com/rioskevin',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('keith60', 
                    'keith60@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/keith60',
                    'India',
                    '1234567890',
                    'I am a professional Animator with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Animator Services',
                    'Expert Animator with focus on Video & Animation, Programming & Tech',
                    93.58,
                    739,
                    'Video & Animation',
                    53.72,
                    'https://www.fiverr.com/keith60',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('ashleyalvarez', 
                    'ashleyalvarez@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/ashleyalvarez',
                    'India',
                    '1234567890',
                    'I am a professional App Developer with 3 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional App Developer Services',
                    'Expert App Developer with focus on Programming & Tech',
                    93.74,
                    439,
                    'Programming & Tech',
                    16.22,
                    'https://www.fiverr.com/ashleyalvarez',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('qwalker', 
                    'qwalker@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/qwalker',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Voice Over Artist with 4 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Voice Over Artist Services',
                    'Expert Voice Over Artist with focus on Music & Audio, Digital Marketing',
                    93.44,
                    999,
                    'Music & Audio',
                    10.86,
                    'https://www.fiverr.com/qwalker',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('kleinchristina', 
                    'kleinchristina@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/kleinchristina',
                    'United States',
                    '1234567890',
                    'I am a professional Market Researcher with 7 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Market Researcher Services',
                    'Expert Market Researcher with focus on Business, Digital Marketing',
                    98.09,
                    166,
                    'Business',
                    99.1,
                    'https://www.fiverr.com/kleinchristina',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('monroepatty', 
                    'monroepatty@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/monroepatty',
                    'Pakistan',
                    '1234567890',
                    'I am a professional Data Analyst with 8 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Data Analyst Services',
                    'Expert Data Analyst with focus on Programming & Tech',
                    92.43,
                    573,
                    'Programming & Tech',
                    46.62,
                    'https://www.fiverr.com/monroepatty',
                    24);

INSERT INTO users 
                    (username, email, password, img, country, phone, description, is_seller)
                    VALUES 
                    ('wangadam', 
                    'wangadam@example.com',
                    '$2b$10$randomhash',
                    'https://www.fiverr.com/wangadam',
                    'India',
                    '1234567890',
                    'I am a professional Illustrator with 2 years of experience',
                    true);
INSERT INTO gigs
                    (user_id, title, description, total_stars, star_number,
                    category, price, cover_image, delivery_time)
                    VALUES
                    (LAST_INSERT_ID(),
                    'Professional Illustrator Services',
                    'Expert Illustrator with focus on Graphic Design, Music & Audio',
                    94.04,
                    108,
                    'Graphic Design',
                    38.83,
                    'https://www.fiverr.com/wangadam',
                    24);

