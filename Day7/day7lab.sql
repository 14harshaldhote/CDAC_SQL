show tables;
CREATE TABLE employee (
  
  emp_firstname VARCHAR(50),
  emp_lastname VARCHAR(50),
  emp_fullname VARCHAR(100),
  emp_department VARCHAR(50),
  emp_salary DECIMAL(10, 2)
);
-- Insert 200 rows of Indian employee data
INSERT INTO employee (emp_firstname, emp_lastname, emp_fullname, emp_department, emp_salary)
VALUES
('Aarav', 'Kumar', 'Aarav Kumar', 'Engineering', 60000.00),
('Aanya', 'Sharma', 'Aanya Sharma', 'Finance', 55000.00),
('Aditi', 'Verma', 'Aditi Verma', 'Human Resources', 52000.00),
('Advait', 'Patel', 'Advait Patel', 'IT', 65000.00),
('Advik', 'Singh', 'Advik Singh', 'Marketing', 58000.00),
('Aiden', 'Gupta', 'Aiden Gupta', 'Engineering', 62000.00),
('Aisha', 'Kaur', 'Aisha Kaur', 'Finance', 55000.00),
('Anaya', 'Mishra', 'Anaya Mishra', 'Human Resources', 53000.00),
('Anika', 'Rao', 'Anika Rao', 'IT', 64000.00),
('Arjun', 'Jain', 'Arjun Jain', 'Marketing', 59000.00),
('Arya', 'Yadav', 'Arya Yadav', 'Engineering', 61000.00),
('Ayaan', 'Shukla', 'Ayaan Shukla', 'Finance', 54000.00),
('Diya', 'Dube', 'Diya Dube', 'Human Resources', 51000.00),
('Ishan', 'Saxena', 'Ishan Saxena', 'IT', 63000.00),
('Kiara', 'Rai', 'Kiara Rai', 'Marketing', 57000.00),
('Reyansh', 'Agarwal', 'Reyansh Agarwal', 'Engineering', 59000.00),
('Saisha', 'Sharma', 'Saisha Sharma', 'Finance', 56000.00),
('Samar', 'Kumar', 'Samar Kumar', 'Human Resources', 54000.00),
('Samaira', 'Mittal', 'Samaira Mittal', 'IT', 66000.00),
('Vihaan', 'Singh', 'Vihaan Singh', 'Marketing', 58000.00),
('Zara', 'Gupta', 'Zara Gupta', 'Engineering', 63000.00),
('Aadit', 'Kapoor', 'Aadit Kapoor', 'Finance', 55000.00),
('Aadvik', 'Sharma', 'Aadvik Sharma', 'Human Resources', 52000.00),
('Aaradhya', 'Yadav', 'Aaradhya Yadav', 'IT', 64000.00),
('Aarya', 'Jain', 'Aarya Jain', 'Marketing', 59000.00),
('Aashvi', 'Sharma', 'Aashvi Sharma', 'Engineering', 62000.00),
('Advika', 'Mishra', 'Advika Mishra', 'Finance', 56000.00),
('Anay', 'Patel', 'Anay Patel', 'Human Resources', 53000.00),
('Anshika', 'Verma', 'Anshika Verma', 'IT', 65000.00),
('Aradhya', 'Mittal', 'Aradhya Mittal', 'Marketing', 57000.00),
('Aria', 'Rai', 'Aria Rai', 'Engineering', 60000.00),
('Dhruv', 'Kumar', 'Dhruv Kumar', 'Finance', 54000.00),
('Kabir', 'Shukla', 'Kabir Shukla', 'Human Resources', 52000.00),
('Rishaan', 'Gupta', 'Rishaan Gupta', 'IT', 66000.00),
('Rudra', 'Saxena', 'Rudra Saxena', 'Marketing', 59000.00),
('Shreya', 'Singh', 'Shreya Singh', 'Engineering', 62000.00),
('Veer', 'Agarwal', 'Veer Agarwal', 'Finance', 55000.00),
('Viha', 'Sharma', 'Viha Sharma', 'Human Resources', 53000.00),
('Viaan', 'Kapoor', 'Viaan Kapoor', 'IT', 64000.00),
('Yug', 'Rai', 'Yug Rai', 'Marketing', 58000.00),
('Aanya', 'Kumar', 'Aanya Kumar', 'Engineering', 61000.00),
('Aarav', 'Sharma', 'Aarav Sharma', 'Finance', 55000.00),
('Aarohi', 'Verma', 'Aarohi Verma', 'Human Resources', 52000.00),
('Abhinav', 'Patel', 'Abhinav Patel', 'IT', 65000.00),
('Advika', 'Singh', 'Advika Singh', 'Marketing', 58000.00),
('Anika', 'Gupta', 'Anika Gupta', 'Engineering', 62000.00),
('Arnav', 'Kaur', 'Arnav Kaur', 'Finance', 55000.00),
('Arush', 'Mishra', 'Arush Mishra', 'Human Resources', 53000.00),
('Aryan', 'Rao', 'Aryan Rao', 'IT', 64000.00),
('Ayana', 'Jain', 'Ayana Jain', 'Marketing', 59000.00),
('Dhruva', 'Yadav', 'Dhruva Yadav', 'Engineering', 61000.00),
('Ishani', 'Shukla', 'Ishani Shukla', 'Finance', 54000.00),
('Kaira', 'Dube', 'Kaira Dube', 'Human Resources', 52000.00),
('Kiara', 'Saxena', 'Kiara Saxena', 'IT', 65000.00),
('Laksh', 'Rai', 'Laksh Rai', 'Marketing', 58000.00),
('Myra', 'Agarwal', 'Myra Agarwal', 'Engineering', 62000.00),
('Navya', 'Sharma', 'Navya Sharma', 'Finance', 55000.00),
('Parth', 'Verma', 'Parth Verma', 'Human Resources', 53000.00),
('Saanvi', 'Patel', 'Saanvi Patel', 'IT', 64000.00),
('Tanishka', 'Singh', 'Tanishka Singh', 'Marketing', 59000.00),
('Vanya', 'Gupta', 'Vanya Gupta', 'Engineering', 61000.00),
('Yug', 'Kaur', 'Yug Kaur', 'Finance', 54000.00),
('Aaradhya', 'Shukla', 'Aaradhya Shukla', 'Human Resources', 52000.00),
('Aarya', 'Rai', 'Aarya Rai', 'IT', 64000.00),
('Aayush', 'Kapoor', 'Aayush Kapoor', 'Marketing', 58000.00),
('Ahaan', 'Sharma', 'Ahaan Sharma', 'Engineering', 62000.00),
('Anvi', 'Mishra', 'Anvi Mishra', 'Finance', 55000.00),
('Arisha', 'Verma', 'Arisha Verma', 'Human Resources', 53000.00),
('Arnav', 'Patel', 'Arnav Patel', 'IT', 65000.00),
('Atharva', 'Jain', 'Atharva Jain', 'Marketing', 59000.00),
('Dhriti', 'Kumar', 'Dhriti Kumar', 'Engineering', 61000.00),
('Drishya', 'Sharma', 'Drishya Sharma', 'Finance', 54000.00),
('Ishita', 'Verma', 'Ishita Verma', 'Human Resources', 52000.00),
('Kriti', 'Singh', 'Kriti Singh', 'IT', 64000.00),
('Mahika', 'Gupta', 'Mahika Gupta', 'Marketing', 58000.00),
('Manya', 'Rai', 'Manya Rai', 'Engineering', 62000.00),
('Navya', 'Shukla', 'Navya Shukla', 'Finance', 55000.00),
('Ruhan', 'Mishra', 'Ruhan Mishra', 'Human Resources', 53000.00),
('Samaira', 'Rao', 'Samaira Rao', 'IT', 65000.00),
('Vedika', 'Jain', 'Vedika Jain', 'Marketing', 59000.00),
('Yashvi', 'Kapoor', 'Yashvi Kapoor', 'Engineering', 61000.00),
('Ziva', 'Sharma', 'Ziva Sharma', 'Finance', 54000.00),
('Aaditya', 'Verma', 'Aaditya Verma', 'Human Resources', 52000.00),
('Ananya', 'Singh', 'Ananya Singh', 'IT', 64000.00),
('Ansh', 'Kumar', 'Ansh Kumar', 'Marketing', 58000.00),
('Ishana', 'Shukla', 'Ishana Shukla', 'Engineering', 62000.00),
('Kiya', 'Gupta', 'Kiya Gupta', 'Finance', 55000.00),
('Mohit', 'Rai', 'Mohit Rai', 'Human Resources', 53000.00),
('Pranav', 'Sharma', 'Pranav Sharma', 'IT', 65000.00),
('Rachit', 'Kaur', 'Rachit Kaur', 'Marketing', 59000);
select * from employee;

alter table employee drop column emp_fullname;

#Write a query to find the names of employees that begin with ‘S

select emp_firstname from employee where emp_firstname like("S%");


#Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The
#first name and the last name must be separated with space.
select concat(emp_firstname, ' ',emp_lastname) as FullName from employee;


# write a query to find all employee with salary btwn 50000 to 100000
select * from employee where emp_salary>=50000 and emp_salary<=100000;

# Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in
#descending order and Department in the ascending order
select concat(emp_firstname, ' ',emp_lastname) as FullName,emp_department from employee order by emp_lastname desc,  emp_department asc;