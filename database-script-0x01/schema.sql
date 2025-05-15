CREATE TABLE IF NOT EXISTS users (
    user_id: SERIAL PRIMARY KEY,
    first_name: VARCHAR(255) NOT NULL,
    last_name: VARCHAR(255) NOT NULL,
    email: VARCHAR(255) UNIQUE NOT NULL,
    password_hash: VARCHAR(255) NOT NULL,
    phone_number: VARCHAR(15) NULL,
    role: ENUM('guest', 'host', 'admin') DEFAULT 'guest',
    created_at: TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
)