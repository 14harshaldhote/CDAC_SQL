#comments for creation of database
create database dac23;

#For selectimg the database
use dac23;

show databases;

#CREATE A TABLE
Create table Student(
	empId int,
    empName varchar(20)
    
);

#check table availabe or not
show tables;

#check schema of a table strucure
desc employee;


#DDL operations
#add new column to existing table
alter table Employee
	add column empDept varchar(60);

#check schema of a table strucure
desc employee;


#add new column to existing table to a particular position
alter table Employee
	add column salary decimal(15,5) after empId;

#check schema of a table strucure
desc employee;

#Modify Exixting column in the table
alter table employee
	modify column empName varchar(50) not null;
    
#Modify column name
alter table employee
	change column salary empSalary decimal(12,3);  

#Change table name
alter table employee
	rename CompnayEmployee;
    
#check schema of a table strucure
desc CompnayEmployee;

#remove a column using drop
alter table CompnayEmployee
	drop column empDept;
    
#delete complete table structure
drop table CompnayEmployee;

# now the table got deleted

#now drop databASE
# drop database dac23.... 

