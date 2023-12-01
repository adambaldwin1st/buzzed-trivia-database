CREATE TABLE questions (
   id SERIAL PRIMARY KEY,
   title VARCHAR(255) NOT NULL,
   answer VARCHAR(255) NOT NULL,
   points_possible INT NOT NULL,
   question_type VARCHAR(50) NOT NULL,
   options JSONB,
   media JSONB,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Index on the 'title' column for faster title lookups
CREATE INDEX idx_title ON questions(title);

-- Index on the 'question_type' column for faster question type lookups
CREATE INDEX idx_question_type ON questions(question_type);

