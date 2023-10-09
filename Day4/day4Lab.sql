use dac_sept23;
create table Department(
deptId int primary key,
    name varchar(50) not null
);

#Copy structure of existing table to new table
create table depart like department;

insert into Department(deptId, name) values(101, "Accout"),(102, "Developer"), (103, "Admin");
select * from Department;