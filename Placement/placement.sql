create database Placement;
use placement;

-- Create PTO Table
CREATE TABLE PTO (
    pto_id INT PRIMARY KEY,
    college_name VARCHAR(255),
    fname VARCHAR(255),
    lname VARCHAR(255)
);

-- Create PTO_Location Table
CREATE TABLE PTO_Location (
    location_id INT PRIMARY KEY,
    city VARCHAR(255),
    street VARCHAR(255),
    landmark VARCHAR(255),
    state VARCHAR(255),
    pincode VARCHAR(10),
    pto_id INT,
    FOREIGN KEY (pto_id) REFERENCES PTO(pto_id)
);

-- Create PTO_ContactInfo Table
CREATE TABLE PTO_ContactInfo (
    contact_info_id INT PRIMARY KEY,
    firm_name VARCHAR(255),
    phone_no VARCHAR(15),
    email VARCHAR(255),
    college_email VARCHAR(255),
    pto_id INT,
    FOREIGN KEY (pto_id) REFERENCES PTO(pto_id)
);

-- Create Placement Table
CREATE TABLE Placement (
    placement_id INT PRIMARY KEY,
    pto_id INT,
    contact_info_id INT,
    package_comper VARCHAR(255),
    FOREIGN KEY (pto_id) REFERENCES PTO(pto_id),
    FOREIGN KEY (contact_info_id) REFERENCES PTO_ContactInfo(contact_info_id)
);

-- Create PTO UserCredentials Table
CREATE TABLE PTO_UserCredentials (
    user_id INT PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    pto_id INT,
    FOREIGN KEY (pto_id) REFERENCES PTO(pto_id)
);

-- Create Company Table
CREATE TABLE Company (
    company_id INT PRIMARY KEY,
    name VARCHAR(255),
    industry_type VARCHAR(255)
);

-- Create Company_Description Table
CREATE TABLE Company_Description (
    description_id INT PRIMARY KEY,
    description TEXT,
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES Company(company_id)
);

-- Create Company_Projects Table
CREATE TABLE Company_Projects (
    project_id INT PRIMARY KEY,
    company_id INT,
    project_name VARCHAR(255),
    project_description TEXT,
    access_level VARCHAR(20),
    FOREIGN KEY (company_id) REFERENCES Company(company_id)
);

-- Create Company_Address Table
CREATE TABLE Company_Address (
    address_id INT PRIMARY KEY,
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    pincode VARCHAR(10),
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES Company(company_id)
);

-- Create Company_JobPosting Table
CREATE TABLE Company_JobPosting (
    job_id INT PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES Company(company_id)
);

-- Create Company UserCredentials Table
CREATE TABLE Company_UserCredentials (
    user_id INT PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES Company(company_id)
);
