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

select * from orders;

##write a SQL query to calculate the average purchase amount of all orders.
select avg(purch_amt) from orders ;

#Write a SQL query that counts the number of unique salespeople. Return number of salespeople.
select count(distinct salesman_id) from orders;