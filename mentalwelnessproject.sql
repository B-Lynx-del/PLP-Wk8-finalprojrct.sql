-- Create the database
CREATE DATABASE MentalWellnessDB;
USE MentalWellnessDB;

-- Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Mood entries
CREATE TABLE MoodEntries (
    entry_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    mood VARCHAR(50) NOT NULL,
    note TEXT,
    entry_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Journal entries
CREATE TABLE JournalEntries (
    journal_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    title VARCHAR(100),
    content TEXT NOT NULL,
    entry_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Breathing sessions
CREATE TABLE BreathingSessions (
    session_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    duration_minutes INT NOT NULL,
    technique VARCHAR(100),
    session_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Affirmations
CREATE TABLE Affirmations (
    affirmation_id INT PRIMARY KEY AUTO_INCREMENT,
    text TEXT NOT NULL,
    category VARCHAR(50)
);

-- User-Affirmation relationship (Many-to-Many)
CREATE TABLE UserAffirmations (
    user_id INT NOT NULL,
    affirmation_id INT NOT NULL,
    saved_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, affirmation_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (affirmation_id) REFERENCES Affirmations(affirmation_id)
);
