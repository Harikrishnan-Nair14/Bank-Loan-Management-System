-- Create database

DROP DATABASE IF EXISTS bank_loan;

CREATE DATABASE bank_loan;

USE bank_loan;
 
-- Create Customer table

CREATE TABLE customer (

    customer_id INT AUTO_INCREMENT PRIMARY KEY,

    name VARCHAR(100) NOT NULL,

    email VARCHAR(100) NOT NULL UNIQUE,

    phone VARCHAR(15) NOT NULL UNIQUE,

    address TEXT NOT NULL,

    kyc_status ENUM('PENDING', 'VERIFIED') NOT NULL

);
 
-- Create LoanProduct table

CREATE TABLE loan_product (

    loan_product_id INT AUTO_INCREMENT PRIMARY KEY,

    product_name VARCHAR(50) NOT NULL,

    interest_rate DECIMAL(5, 2) NOT NULL,

    min_amount DECIMAL(10, 2) NOT NULL,

    max_amount DECIMAL(10, 2) NOT NULL,

    tenure INT NOT NULL

);
 
-- Create LoanApplication table

CREATE TABLE loan_application (

    loan_application_id INT  PRIMARY KEY,

    customer_id INT NOT NULL,

    loan_product_id INT NOT NULL,

    loan_amount DECIMAL(10, 2) NOT NULL,

    application_date DATE,

    approval_status ENUM('PENDING', 'APPROVED', 'REJECTED') NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),

    FOREIGN KEY (loan_product_id) REFERENCES loan_product(loan_product_id)

);
 
-- Create Repayment table

CREATE TABLE repayment (

    repayment_id INT AUTO_INCREMENT PRIMARY KEY,

    loan_application_id INT NOT NULL,

    due_date DATE NOT NULL,

    amount_due DECIMAL(10, 2) NOT NULL,

    payment_date DATE,

    payment_status ENUM('PENDING', 'COMPLETED') NOT NULL,

    FOREIGN KEY (loan_application_id) REFERENCES loan_application(loan_application_id)

);

-- Create Admin table

CREATE TABLE admin (
    username VARCHAR(50) NOT NULL PRIMARY KEY,
    password VARCHAR(100) NOT NULL
);

-- Insert Admin Record

INSERT INTO admin (username, password) VALUES ('admin', 'password');
 
