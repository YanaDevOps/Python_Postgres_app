DO
$$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'admin') THEN
    CREATE DATABASE admin;
  END IF;
END
$$;

-- Connecting to the admin database
\c admin;

-- Create a table of users
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  age INTEGER,
  email VARCHAR(100)
);

-- Insert test data
INSERT INTO users (name, age, email) VALUES
('Alice', 30, 'alice@example.com'),
('Bob', 25, 'bob@example.com'),
('Charlie', 35, 'charlie@example.com');
