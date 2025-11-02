-- Create the main database
CREATE DATABASE IF NOT EXISTS electiondb;
USE electiondb;

-- Create the main voter information table
CREATE TABLE IF NOT EXISTS info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    aadhar VARCHAR(12),
    gender VARCHAR(10),
    photo BLOB
);

-- Create a copy table for verified or transferred records
CREATE TABLE IF NOT EXISTS info_copy LIKE info;
