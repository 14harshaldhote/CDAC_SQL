create database TCL;
use TCL;

###### TCL COMMANDS


desc department;

show tables;

use dac_sept23;

select * from department;

start transaction;

insert into department values(104,"Marketing");

update department set name="Finance" Where deptId=104;

insert into department values(105,"Health");

rollback;

commit;

########################## DCL ##########################################

#GRANT
#REVOKE

select user from mysql.user;# provide list of users
select user();#provide current user

revoke delete on department from Ram@localhost;
revoke insert on department from Ram@localhost;



################### SUB QUERY ###################

select * from employeee;
CREATE TABLE employeee (
    empid INT PRIMARY KEY,
    name VARCHAR(255),
    salary DECIMAL(10, 2),
    deptid INT
);
INSERT INTO employeee (empid, name, salary, deptid)
VALUES
    (1, 'J Ramayia', 50000, 101),
    (2, 'M Sushant', 60000, 101),
    (3, 'B Jantra', 55000, 102),
    (4, 'A Ramesha', 62000, 103),
    (5, 'E Eliphant', 58000, 103);

select MAX(salary) AS secondHighest FROM employeee WHERE salary < (SELECT MAX(salary) FROM employeee);#second highest 

select MAX(salary) AS ThirdHighest FROM employeee WHERE salary < (SELECT MAX(salary) FROM employeee WHERE salary < (SELECT MAX(salary) FROM employeee));#third


select salary from employeee order by(salary) desc limit 1 offset 2;

############# VIEWW ###################
create view thirdMax1 as select MAX(salary) AS ThirdHighest FROM employeee WHERE salary < (SELECT MAX(salary) FROM employeee WHERE salary < (SELECT MAX(salary) FROM employeee));
select * from thirdMax;

show tables;

select * from department;
select * from employeee;


SELECT d.deptid, d.name, e.name AS employe_name FROM department d INNER JOIN employeee e ON d.deptid = e.deptid;
