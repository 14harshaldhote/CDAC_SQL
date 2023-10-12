use dac_sept23;
show tables;

select * from employee;
## stored procedure 
delimiter // #delimiter change from ; to //
create procedure SPgetAllEmployee()
begin
select emp_firstname from employee; #no ; is used in SP or delimeter get disabled for some time
end//
delimiter ; #now delimiter get back to orginal one 

call employee.SPgetAllEmployee();