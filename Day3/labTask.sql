use dac_sept23;
create table orders(
ord_no int,
purch_amt decimal(6,2),
ord_date date,
customer_id int,
salesman_id int
);

INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id)
VALUES (70001, 150.5, '2012-10-05', 3005 , 5002),
(70009, 270.65 , '2012-09-10', 3001 , 5005),
(70002,65.26,'2012-10-05',3002 ,5001),
(70005 ,2400.6,'2012-07-27',3007,5001 ),
(70008 ,5760 ,'2012-09-10',3002,5001 );

#adding two colum for city and name
alter table orders
ADD city varchar(20),
add cust_name varchar(20);

alter table orders
ADD Scity varchar(20),
add Sales_name varchar(20);

set sql_safe_updates=0;

UPDATE orders
SET city = 'jaipur', cust_name = 'Bhupen bhai sha'
WHERE ord_no=70001;

UPDATE orders
SET city = 'jaipur', cust_name = 'Ramesh bhai sha'
WHERE ord_no=70002;

UPDATE orders
SET city = 'badlapur', cust_name = 'ranever hera'
WHERE ord_no=70009;

UPDATE orders
SET city = 'chennai', cust_name = 'Thiluu Anna'
WHERE ord_no=70005;

UPDATE orders
SET city = 'bhilai', cust_name = 'Nipur Panali'
WHERE ord_no=70008;

#SALES
UPDATE orders
SET Scity = 'jaipur', Sales_name = 'Milind sha'
WHERE salesman_id=5002;

UPDATE orders
SET Scity = 'Raipur', Sales_name = 'Rao chawal'
WHERE salesman_id=5005;

UPDATE orders
SET Scity = 'bhilai', Sales_name = 'Ganesh Rao'
WHERE salesman_id=5001;

select * from orders;

##write a SQL query to calculate the average purchase amount of all orders.
select avg(purch_amt) from orders ;

#Write a SQL query that counts the number of unique salespeople. Return number of salespeople.
select count(distinct salesman_id) as "Sales MAN ID"from orders ;

#Write a SQL query to calculate the average purchase amount of all orders. Return average purchase amount.
select avg(purch_amt) as " AVG Purchase amount" from orders ;

#Write a SQL query to calculate total purchase amount of all orders. Return total purchase amount.
select sum(purch_amt) as " TOTAL Purchase amount" from orders ;

#5 Write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.
select sales_name as "Sales man", cust_name as "Customer Name", c; #join query

#6.Write a SQL query to find distinct salespeople and their cities.Return salesperson ID and city.
select distinct sales_name as "Salesperson" , scity as "CITY" from orders;

#7 Write a SQL query to find the salespeople who generated the largest and smallest orders on each date. Sort the result-set on third field.
#Return salesperson ID, name, order no., highest on/lowest on, order date.


