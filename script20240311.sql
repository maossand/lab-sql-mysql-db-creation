DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    vin VARCHAR(17) PRIMARY KEY,
    manufacturer VARCHAR(255),
    model VARCHAR(255),
    year INT,
    color VARCHAR(50)
);
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
customer_id VARCHAR(10) PRIMARY KEY,
name VARCHAR(200),
phone_number VARCHAR(10),
email VARCHAR(200),
address VARCHAR(255),
city VARCHAR(200),
state_province VARCHAR(200),
country VARCHAR(10),
zip_code VARCHAR(8),
vin VARCHAR(17) UNIQUE,
invoice_number VARCHAR(200) UNIQUE,
FOREIGN KEY (vin) REFERENCES cars(vin)
);
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
staff_id VARCHAR(10) PRIMARY KEY,
name VARCHAR (200),
store VARCHAR (200),
vin VARCHAR(17) UNIQUE,
FOREIGN KEY (vin) REFERENCES cars(vin)
);
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
invoice_number VARCHAR(200) PRIMARY KEY,
vin VARCHAR(17) UNIQUE,
customer_id VARCHAR(10) UNIQUE,
date DATE,
car VARCHAR(200),
customer VARCHAR(200),
staff_id VARCHAR(10) UNIQUE,
FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id),
FOREIGN KEY (vin) REFERENCES cars(vin),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)

);