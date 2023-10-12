use dac_sept23;
show tables;

select * from dac_sept23.employee;


desc employee;



delimiter // 
create procedure SPempAllEmployee()
begin
select emp_firstname from employee; 
end //
#now delimiter get back to orginal one
delimiter ; 
 

call SPempAllEmployee();


########remeaning


delimiter // 
create procedure SPCountAllEmployee()
begin
select emp_firstname from employee; 
select count(*) from employee;
end //
#now delimiter get back to orginal one
delimiter ; 

call SPCountAllEmployee();








############## IN / OUT / INOUT############

#IN
DElimiter //
create procedure getSingleeEmployee(in id int)
begin
select emp_firstname from employee where emp_salary=id;
end //
delimiter ;

call getSingleeEmployee(60000);

#OUT
DElimiter //
create procedure EmployeeMaxSalary(out highestSalary decimal(10,2))
begin
select ma(emp_salary) into highestSalary  from employee ;
end //
delimiter ;

call EmployeeMaxSalary(@m);

#INOUT
DELIMITER //
CREATE PROCEDURE findSalary(IN department VARCHAR(20), OUT Salary DECIMAL(10,2))
BEGIN
    SELECT SUM(emp_salary) INTO Salary FROM employee WHERE emp_department = department;
END //
DELIMITER ;

CALL findSalary('IT', @m);
select @m;

#INOUT
DELIMITER //
CREATE PROCEDURE findMaxSalary(IN department VARCHAR(20), OUT salary DECIMAL(10,2))
BEGIN
    #select emp_firstname , MAX(emp_salary) INTO firstname, salary FROM employee WHERE emp_department = department  ;
    select emp_department,MAX(emp_salary) from employee group by(emp_department) having emp_department=department;
END //
DELIMITER ;

CALL findMaxSalary('Human Resources',  @salary);
SELECT @salary ;

#INOUT
-- DELIMITER //
-- CREATE PROCEDURE findMaxSalary(IN department VARCHAR(20), OUT firstname VARCHAR(25), OUT salary DECIMAL(10,2))
-- BEGIN
--     SELECT emp_firstname, emp_salary INTO firstname, salary
--     FROM employee
--     where emp_department = department
--     AND emp_salary = (SELECT MAX(emp_salary) FROM employee WHERE emp_department = department);
-- END //
-- DELIMITER ;

CALL findMaxSalary('IT', @name, @salary);
SELECT @name, @salary;



select emp_department,MAX(emp_salary) from employee group by(emp_department) having emp_department="IT";