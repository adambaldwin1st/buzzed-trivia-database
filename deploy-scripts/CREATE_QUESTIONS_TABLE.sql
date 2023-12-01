-- Create table if not exists
CREATE TABLE IF NOT EXISTS questions (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    answer VARCHAR(255) NOT NULL,
    points_possible INT NOT NULL,
    question_type VARCHAR(50) NOT NULL,
    options JSONB,
    media JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create index if not exists on the 'title' column for faster title lookups
CREATE INDEX IF NOT EXISTS idx_title ON questions(title);

-- Create index if not exists on the 'question_type' column for faster question type lookups
CREATE INDEX IF NOT EXISTS idx_question_type ON questions(question_type);


