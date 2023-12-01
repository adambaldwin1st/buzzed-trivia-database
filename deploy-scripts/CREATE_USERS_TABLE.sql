-- Create table if not exists
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE,
    password_hash VARCHAR(100),  -- Store password hash instead of plaintext
    google_id VARCHAR(50) UNIQUE, -- Store Google ID for Google login
    is_admin BOOLEAN DEFAULT FALSE,  -- New boolean field for admin status
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create index if not exists for faster username lookups
CREATE INDEX IF NOT EXISTS idx_username ON users(username);

-- Create index if not exists for faster email lookups
CREATE INDEX IF NOT EXISTS idx_email ON users(email);
