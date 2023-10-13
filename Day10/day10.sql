
-- String Function

select char(65,71,89,122);

select concat("Harshal","Dhote");

select lower("Soft");

select upper("give in upeer case");

select trim("         remove white space");

select substring("The String Work ", 2, 8);

select Instr("str1", "str1");

select length("Harshal Dhote");

-- Numeric Function

select mod(10,2);

select power(10,2);

select round(19325,1);

select truncate(783,73);

select sqrt(500);

-- Date Function

select current_date();

select now();

select month(current_date());

select day("2023-12-23");

select year("2023-12-23");

select month("2023-12-23");

select sysdate();
select system_user();


-- Stored Function
use dac_sept23;

-- without parameter
delimiter //
create function hello()
RETURNS varchar(30)
deterministic 
begin
	return "hello Sir";
end//
delimiter ;

select hello();

-- with parameter

delimiter //
create function addition(x int,y int)
returns int
deterministic
begin 
return(x+y);
end //
delimiter ;

select addition(222222222,20);



