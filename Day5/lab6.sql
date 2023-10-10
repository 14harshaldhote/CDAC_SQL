#From the following table, create a view for those salespeople who belong to the city of California
CREATE TABLE list (
    salesman_id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    commission NUMERIC(5, 2)
);

INSERT INTO list (salesman_id, name, city, commission)
VALUES
    (5001, 'James Hoog', 'California', 0.15),
    (5002, 'Nail Knite', 'Paris', 0.13),
    (5005, 'Pit Alex', 'London', 0.11),
    (5006, 'Mc Lyon', 'Paris', 0.14),
    (5007, 'Paul Adam', 'Rome', 0.13),
    (5003, 'Lauson Hen', 'San Jose', 0.12);

CREATE VIEW CaliforniaSalespeople AS
SELECT * FROM list
WHERE city = 'California';

SELECT * FROM CaliforniaSalespeople;

#From the following table, create a view that counts the number of customers in each grade.
CREATE TABLE list2 (
    customer_id INT,
    cust_name VARCHAR(50),
    city VARCHAR(50),
    grade INT,
    salesman_id INT
);
INSERT INTO list2 (customer_id, cust_name, city, grade, salesman_id)
VALUES
    (3002, 'Nick Rimando', 'California', 100, 5001),
    (3007, 'Brad Davis', 'California', 200, 5001),
    (3005, 'Graham Zusi', 'New York', 200, 5002),
    (3008, 'Julian Green', 'London', 300, 5002),
    (3004, 'Fabian Johnson', 'Paris', 300, 5006);

create view GradeeCount As select grade,count(*) as "Number of Customer" from list2 group by grade ;
select * from gradeecount;
