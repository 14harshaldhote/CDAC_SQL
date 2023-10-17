use dac_sept23;
select * from employee;

delimiter //
create procedure cursorDemo1()
begin
declare name varchar(50);
declare salary decimal(10,2);

declare cursor1 cursor for select emp_firstname,emp_salary from employee;
open cursor1;
fetch cursor1 into name,salary;
close cursor1;

select name ,salary;
end //
delimiter ;

call cursorDemo1();


delimiter //
create procedure cursorDemo2()
begin
declare finished int default 0;
declare counter int default 1;
declare dept varchar(50);
declare salary decimal(10,2);

declare cursor2 cursor for select emp_department,emp_salary from employee;
declare continue handler for not found set finished=1;
open cursor2;
loop1:loop
if finished or counter>2 then
leave loop1;
end if;

fetch cursor2 into dept,salary;
select dept ,salary;
set counter = counter+1;
end loop;
close cursor2;
end //
delimiter ;

call cursorDemo2();

-- Writing procedures with Declare, fetch and close cursor, give the example of each type of cursors.
