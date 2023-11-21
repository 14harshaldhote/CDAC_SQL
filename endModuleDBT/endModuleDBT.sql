create database endmoduledbt;

use library;

-- QUESTION 1 
-- Create:
 
create table books (
    book_id integer primary key,
    title text,
    author text,
    publication_year int,
    price decimal(10,2)
);

insert into books (book_id, title, author, publication_year, price)
values (101, 'Zero To One', 'Dr. Legus', 2018, 249.50);

insert into books (book_id, title, author, publication_year, price)
values (102, 'Deadth Story', 'Ramna Anusha', 2008, 519.20);

insert into books (book_id, title, author, publication_year, price)
values (103, 'Married Life', 'Mr Gosling', 2014, 129.30);

insert into books (book_id, title, author, publication_year, price)
values (104, 'Omit the Space', 'Rajushi Yash', 2004, 729.30);

-- Read
select * from books where book_id = 101;

-- Update

update books
set title = 'Evolution of Brain', author = 'Dr Rinku Rao', publication_year = 2013, price = 837.99
where book_id = 101;

select * from books;

-- Delete
delete from books where book_id = 102;

drop table books;

-- QUESTION 2

create table employees (
    emp_id int primary key,
    emp_name varchar(30),
    emp_salary decimal (20,3),
    emp_department varchar(50),
    emp_join_date date
);

-- Insert Trigger
delimiter //
create trigger insert_employee_trigger
before insert on employees
for each row
begin
    if new.emp_join_date is null then
        set new.emp_join_date = current_date();
    end if;
end;
//
delimiter ;

drop trigger insert_employee_trigger;

insert into employees (emp_id, emp_name, emp_salary, emp_department)
values (101, 'Ranu Shya', 50000.123, 'HR');
insert into employees (emp_id, emp_name, emp_salary, emp_department)
values (103, 'Rahim Sen', 40800.13, 'Resource');
insert into employees (emp_id, emp_name, emp_salary, emp_department)
values (102, 'Abhimanu Rhen', 58000.123, 'HR');
select * from employees;
insert into employees (emp_id, emp_name, emp_salary, emp_department)
values (105, 'Mahin Sabha', 58000.123, 'HR');
insert into employees (emp_id, emp_name, emp_salary, emp_department)
values (107, 'Nikhil Shrama', 59000.13, 'HR');
select * from employees;

-- Update Trigger

delimiter //
create trigger update_employee_trigger
before update on employees
for each row
begin
    if new.emp_salary <> old.emp_salary then
        set new.emp_join_date = current_date();
    end if;
end;
//
delimiter ;

update employees
set emp_salary = 55000.456
where emp_id = 102;

select * from employees;

-- Delete Trigger 

drop trigger delete_employee_trigger;

delimiter //
create trigger delete_employee_trigger
before delete on employees
for each row
begin
    insert into deleted_employees_log (emp_id, emp_name, emp_salary, emp_department, emp_join_date, deletion_date)
    values (old.emp_id, old.emp_name, old.emp_salary, old.emp_department, old.emp_join_date, current_date());
end;
//
delimiter ;


INSERT INTO employees (emp_id, emp_name, emp_salary, emp_department, emp_join_date)
VALUES (106, 'Raju Nashiv', 60050.00, 'Resource', '2023-05-11');
INSERT INTO employees (emp_id, emp_name, emp_salary, emp_department, emp_join_date)
VALUES (104, 'Raju Shrvan', 50050.00, 'IT', '2013-05-21');


select * FROM employees;


DELETE FROM employees WHERE emp_id = 106;

DELETE FROM employees WHERE emp_id = 104;

select * FROM deleted_employees_log;

create table deleted_employees_log (
    emp_id INT,
    emp_name varchar(255),
    emp_salary decimal(20,3),
    emp_department varchar(255),
    emp_join_date date,
    deletion_date date
);
drop table deleted_employees_log;
