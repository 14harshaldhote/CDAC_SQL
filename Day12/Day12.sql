use dac_sept23;

create table user(
id int primary key auto_increment ,
name varchar(50),
email varchar(50)
);

create table auditLog(
eventType varchar(50),
eventDescription varchar(300)
);

delimiter //

create trigger afterUserInsert
after insert on user
for each row
begin
    insert into auditLog(eventType, eventDescription)
    values('Insert', concat('New user inserted: id ', new.id, ', user Name: ', new.name, ', Email: ', new.email));
end //

delimiter ;

INSERT INTO user (id, name, email) VALUES (1, 'Peshwah Vaibhav', 'Vaibha@pune.com');
INSERT INTO user ( name, email) VALUES ('Harsh Rana', 'Rana@harsh.com');
INSERT INTO user ( name, email) VALUES ('Durgesh Ramja', 'Rana@harsh.com');
INSERT INTO user ( name, email) VALUES ('Malak Patil', 'Rana@harsh.com');
INSERT INTO user ( name, email) VALUES ('Renu Rana', 'Rana@harsh.com');

select *from user;
select * from auditLog;


######################################DELETE##
delimiter //

create trigger beforeUserDelete
before delete on user
for each row
begin
    insert into auditLog(eventType, eventDescription)
    values('Delete',concat('Old user deleted : Id',old.id,'Name ',old.name,', Email ',old.email));
end //

delimiter ;

delete from user where id=2;


delimiter //

create trigger AfterUserDelete
after delete on user
for each row
begin
    insert into auditLog(eventType, eventDescription)
    values('Delete',concat('Old user deleted : Id',old.id,'Name ',old.name,', Email ',old.email));
end //

delimiter ;

delete from user where id=1;


######UPDATE#####################################

delimiter //

create trigger AfterUserUpdate
after update on user
for each row
begin
    insert into auditLog(eventType, eventDescription)
    values('Update',concat('Old user deleted : Id',old.id,'Name ',old.name,', Email ',old.email));
end //

delimiter ;

update User set email='ramesh@gmail.com' where id=1;

select *from user;
select * from auditLog;

######  UPDATE  -- 2  #####################################
delimiter //

create trigger BeforeUserUpdate2
before update on user
for each row
begin
    insert into auditLog(eventType, eventDescription)
    values('Update',concat('Old user deleted : Id',old.id,'Name ',old.name,', Email ',old.email));
end //

delimiter ;

update User set name='Mahesh Patil' where id=3;
update User set name='Mithila Patil' where id=4;
update User set email='Mahesh@Patil.com' where id=3;
update User set email='Mithila@Patil.com' where id=4;
update User set email='Renu@Rana.com' where id=5;
update User set email='Harsh@Rana.com' where id=6;
select *from user;
select * from auditLog;


-- ------------------------------------------------------------------------------------------------------------
select * from employee;

drop trigger BeforeSalaryInsert;

delimiter //

create trigger BeforeSalaryInsert
before insert on employee
for each row
begin
    if new.emp_salary < 0 then
        SET new.emp_salary = 112000;
    end if;
end //

delimiter ;

INSERT INTO employee (emp_firstname, emp_lastname, emp_department, emp_salary)
VALUES ('Ani', 'Kumar', 'IT', -2000), ('Amiti', 'Haole', 'IT', -5000);
