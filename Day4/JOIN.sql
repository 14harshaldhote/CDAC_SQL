use dac_sept23;

create table customer(
cst_id int,
cst_firstname varchar(30),
cst_lastname varchar(30)
);

desc customer;


INSERT INTO customer (cst_id, cst_firstname, cst_lastname)
VALUES (101,"Ramesh","Sukla"),
(102,"Suresh","Sharma"),
(103,"Bhavesh","Roy"),
(104,"Kailash","Gupta"),
(105,"Mahesh","Sharma");

drop table orderss;

create table orderss(
o_id int,
cst_id varchar(30),
productName varchar(30)
);

insert into orderss(o_id,cst_id,productName)
values(1,102,"Laptop"),(2,104,"Mobile"),(3,102,"Camera"),(4,106,"Bike"),(5,108,"Chair");

###JOIN####


###############  INNER JOIN
select cst_firstname, orderss.productName from customer inner join orderss on customer.cst_id=orderss.cst_id;

############### left join
select cst_firstname, orderss.productName from customer left join orderss on customer.cst_id=orderss.cst_id;

############# right 
select cst_firstname, orderss.productName from customer right join orderss on customer.cst_id=orderss.cst_id;

################ full join
SELECT cst_firstname, productName
FROM customer 
FULL JOIN orderss ;

################ full join


