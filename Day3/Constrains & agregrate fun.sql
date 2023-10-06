create database dac_sept23;

use dac_sept23;

create table VotingList(
	voterId int,
    voterName varchar(50) not null,
    voterAge int check(voterAge>=18),
    voterAadhar varchar(12) unique,
    income decimal(10,2) default 0.00,
    primary key(voterId)
    
);

desc VotingList;


INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar, income)
VALUES (100001, 'Amit Kumar', 25, '123456789012', 50000.00);

INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar, income)
VALUES (100002, 'Priya Sharma', 30, '234567890123', 60000.00);

INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar, income)
VALUES (100003, 'Rajesh Patel', 22, '345678901234', 35000.00);

#entering duplicate primary key
INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar, income)
VALUES (100001, 'Amisa Kumari', 28, '123156789012', 50000.00);

INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar)
VALUES (100004, 'Jitendra Asi', 38, '123156789535');

select * from VotingList;

#not giving name
INSERT INTO VotingList (voterId, voterAge, voterAadhar)
VALUES (100004, 48, '123156795635');

#checking uniqe key 
INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar, income)
VALUES (100005, 'Rajesih Parel', 21, '345678901234', 359900.00);

INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar, income)
VALUES (100006, 'Meera Yadav', 38, '556677889900', 80000.00);

INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar, income)
VALUES (100007, 'Suresh Kumar', 20, '667788990011', 32000.00);

INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar, income)
VALUES (100008, 'Asha Sharma', 36, '778899001122', 72000.00);

INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar, income)
VALUES (100009, 'Rajat Gupta', 34, '889900112233', 70000.00);

INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar, income)
VALUES (100010, 'Neelam Verma', 37, '990011223344', 78000.00);

INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar, income)
VALUES (100011, 'Alok Singh', 19, '001122334455', 30000.00);

INSERT INTO VotingList (voterId, voterName, voterAge, voterAadhar, income)
VALUES (111111, 'Peshwa Vaibhav Mohite', 25, '111111111111', 99999999.99);


##### AGREGATE FUNCTION #########

select * from VotingList;

select max(income) from VotingList; #only give income
select max(income) as "Highest Income" from VotingList; #give a name to  column
select min(income) as "Lowest" from VotingList;#lowest 
select sum(income) as "total income" from VotingList;
select count(*) as "total record" from VotingList;#give total list count
select avg(income) as "average" from VotingList;#avg of income


######### CLAUSE ####### 
select voterAge as "Age" ,voterName as "Name" from VotingList;
select voterAge as "Age" ,voterName as "Name", income as "INCOME" from VotingList where income>50000;
select voterAge as "Age" ,voterName as "Name", income as "INCOME" from VotingList where income in(72000, 80000);
select voterAge as "Age" ,voterName as "Name", income as "INCOME" from VotingList where income between 2000 and 80000;
select voterAge as "Age" ,voterName as "Name", income as "INCOME" from VotingList where voterAge>22  and income>50000;
select voterAge as "Age" ,voterName as "Name", income as "INCOME" from VotingList where voterAge>22  or income>50000;
select * from VotingList where voterName like "P%";
select voterAge as "Age" ,voterName as "Name", income as "INCOME" from VotingList order by income desc;
select voterAge,sum(income) from VotingList group by(voterAge) ;
select * from VotingList where voterAadhar is null ;


####### OFFSET  LIMIT ######
select * from VotingList limit 3 offset 4;

###### DISTINCT ######
select  distinct(voterAge) from VotingList order by voterAge desc;


