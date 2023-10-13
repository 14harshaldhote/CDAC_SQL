use dac_sept23;

select if (10>2, "Yes", "No");

select * from employee;

# sare employees ka naam(empName) se aur unki salary(empSalary) naam ka constraint rahega
select empName, empSalary, if(empSalary>50000, "Higher salary", "Lower salary") as result from employee;


delimiter //
create procedure salaryStatus(in id int)
begin
declare salary decimal(15,2);
    declare status varchar(50);
   
    select empSalary into salary from employee where empId=id;
   
    if salary>50000 then
set status = "Good salary";
    else
set status = "Less Salary";
end if;
   
    select status as Result;
   
end //
delimiter ;

call salaryStatus(5);

select "Anup sir" as "My Trainer"


# swich case in sql
delimiter //
create procedure salaryStatus1(in id int)
begin
declare salary decimal(15,2);
    declare status varchar(50);
   
    select empSalary into salary from employee where empId=id;
   
    set status =
    case
    when salary>50000 then "Excilent"
    when salary>60000 then "very goood"
    when salary>70000 then "goooood"
    else "Keep growing........"
   
end;
    select status as Result;
   
end //
delimiter ;

call salaryStatus1(4);


# if else if ladder
delimiter //
create procedure salaryStatus2(in id int)
begin
declare salary decimal(15,2);
    declare status varchar(50);
   
    select empSalary into salary from employee where empId=id;
   
    if salary>50000 then
set status = "Good Salary";
    elseif salary>60000 then  
set status = "very goood";
    else
    set status = "goooood";
   
end if;
   
    select status as Result;
   
end //
delimiter ;

call salaryStatus2(2);

select * from employee;
insert into employee(empid, empName, empSalary, did)
values(6, "Swapnil", "65000", 102);


##########################LOOPS################################
# while loop
delimiter //
create procedure While_loop()
begin
Declare num int default 1;
    declare result varchar(100) default '';
   
    while num<10 do
set result = concat(result, num, ',');
        set num = num+1;
end while;
   
    select result as Result;
end //
delimiter ;

call While_loop();


#********************************************************


delimiter //
create procedure LoopDemo()
begin
declare x int;
    declare str varchar(200);
   
    set x = 1;
    set str = '';
   
    loop_label:loop
if x>10 then
leave loop_label;
end if;
       
        set x = x+1;
        if (x mod 2) then
iterate loop_label;
else
set str = concat(str, x, ',');
end if;
end loop;
   
    Select str as Result;
end //
delimiter ;

call LoopDemo();

drop procedure LoopDemo;

#**************************************************************
delimiter //
create procedure TestRepeat()
begin
declare num int default 1;
    declare result varchar(100) default '';
   
    repeat
set result = concat(result, num, ',');
        set num = num * 5;
until num>1000
    end repeat;
    select result;


end //
delimiter ;

call TestRepeat();
