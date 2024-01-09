DROP DATABASE IF EXISTS flask_feedback;

CREATE DATABASE flask_feedback;

\c flask_feedback

CREATE TABLE users
(
    username VARCHAR(20) PRIMARY KEY,
    password TEXT NOT NULL,
    email VARCHAR(50) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL
);

CREATE TABLE feedback
(
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    username VARCHAR REFERENCES users(username) NOT NULL
);