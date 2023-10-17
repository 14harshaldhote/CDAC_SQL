use dac_sept23;
create table post_office(
po_id int primary key,
po_name varchar(35) not null,
po_address varchar(35) not null,
po_city varchar(35) not null,
po_state varchar(2),
po_pincode int);

drop table post_office;
-- Write insert query for the above table (Post_Office). Enter 5 rows in the table.
-- Inserting data into the "Post_Office" table with real Indian city and state names
INSERT INTO Post_Office (po_id, po_name, po_address, po_city, po_state, po_pincode)
VALUES
  (1, 'Mumbai Central PO ', '123 Main Street', 'Mumbai', 'MH', 40001),
  (2, 'Mumbai Dadar PO ', '456 First Avenue', 'Mumbai', 'MH', 40002),
  (3, 'Chennai City Post Office', '789 Park Road', 'Chennai', 'TN', 60001),
  (4, 'Kolkata GPO', '1010 Lake View Road', 'Kolkata', 'WB', 70001),
  (5, 'Bengaluru Post Office', '888 MG Road', 'Bengaluru', 'KA', 56001),
  (6, 'Hyderabad Central PO ', '345 Jubilee Hills', 'Hyderabad', 'TS', 50001),
  (7, 'Hyderabad Kazipet PO ', '222 Hitech City', 'Hyderabad', 'TS', 50002),
  (8, 'Pune Main Post Office', '222 University Road', 'Pune', 'MH', 41101),
  (9, 'Pune Shivane PO ', '333 College Road', 'Pune', 'MH', 41102),
  (10, 'Lucknow Post Office', '999 Nawab Road', 'Lucknow', 'UP', 22001),
  (11, 'Chandigarh Central PO', '777 Sector 17', 'Chandigarh', 'CH', 16001),
  (12, 'Bhopal GPO', '222 Lake View Colony', 'Bhopal', 'MP', 46201),
  (13, 'Patna Main PO', '333 Patliputra Road', 'Patna', 'BR', 80001),
  (14, 'Guwahati Post Office', '444 Assam Road', 'Guwahati', 'AS', 78101),
  (15, 'Thiruvananthapuram PO', '666 Kerala Avenue', 'Thiruvananthapuram', 'KL', 69001);



-- Write a query that will display all the Post Office records of a State. Display the address of Post Office in a same city.
select * from post_office;

select po_pincode,po_address,po_city from post_office where po_city=(select po_city from post_office group by po_city order by count(po_city) desc limit 1);




select po_address from post_office where count(po_city);


SELECT po_address AS PostOfficeAddress,po_city FROM Post_Office where po_state="MH";
SELECT
    po_id AS OfficeID,
    po_name AS OfficeName,
    (SELECT
        CASE
            WHEN COUNT(*) > 1 THEN MAX(po_address)
            ELSE NULL
        END
     FROM Post_Office p2
     WHERE p2.po_city = Post_Office.po_city
     ) AS Address,
    po_city AS City,
    po_state AS State
FROM Post_Office
ORDER BY po_state, po_city, po_name;


-- .In which city having maximum number of post office,show the pincodes of those cities.
select po_pincode,po_city from post_office where po_city=(select min(distinct po_city)from post_office);

SELECT po_city AS City, GROUP_CONCAT(po_pincode) AS Pincodes
FROM Post_Office
WHERE po_city = (
    SELECT po_city
    FROM Post_Office
    GROUP BY po_city
    ORDER BY COUNT(*) DESC
    LIMIT 1
)
GROUP BY po_city;


--  Create a store procedure that receives the first name of the person table as input and the last name as output;


select *from employee;
delimiter //

create procedure returnname(in firstname varchar(20), out lastname varchar(30))
begin
    select emp_lastname into lastname from employee where emp_firstname = firstname;
end//

delimiter ;


CALL returnname('Aditi', @m);
select @m;

-- Create a query to show the top 10 customerIDs of users with more Orders
SELECT cID, COUNT(oID) as OrderCount
FROM Orders
GROUP BY cID
ORDER BY OrderCount DESC
LIMIT 10;

-- Creating procedure without parameters
delimiter // 
create procedure SPCountAllEmployee()
begin
select emp_firstname from employee; 
select count(*) from employee;
end //
delimiter ; 

call SPCountAllEmployee();




delimiter //

-- create the stored procedure
create procedure getpostofficeinfo(in cityname varchar(35), in statecode varchar(2), out postofficecount int, inout citystatedetails varchar(255) )
begin
    declare cityinfo varchar(255);

    select count(*) into postofficecount
    from post_office
    where po_city = cityname and po_state = statecode;

    set cityinfo = concat('city: ', cityname, ', state: ', statecode);

    set citystatedetails = cityinfo;
end//
delimiter ;


-- student's score.
DELIMITER //

CREATE PROCEDURE AssignGrade(IN studentScore INT,OUT studentGrade CHAR(1))
BEGIN
    IF studentScore >= 90 THEN
        SET studentGrade = 'A';
    ELSEIF studentScore >= 80 THEN
        SET studentGrade = 'B';
    ELSEIF studentScore >= 70 THEN
        SET studentGrade = 'C';
    ELSEIF studentScore >= 60 THEN
        SET studentGrade = 'D';
    ELSE
        SET studentGrade = 'Fail';
    END IF;
END//

DELIMITER ;


CALL AssignGrade(85, @grade);
SELECT @grade;

--  Write a MySQL stored procedure that uses a loop to iterate through a list of numbers from 1 to 20.
delimiter //
create procedure list3()
begin
	declare a int ;
    declare str varchar(100) default '' ;
    set str='';
    set a=0;
    while a<=20 do 
    set a=a+1;
    set str = concat(str,a, ',');
    end while;
    select str ;
end //
delimiter ;

call list3();
    
-- Create a stored procedure named CalculateFactorial that accepts a single integer parameter, n.Inside the procedure, use a loop to calculate the factorial of n.
delimiter //
create procedure CalculateFactorial (n INT)
begin
    declare fact bigint default 1;
    declare i int default 1;

    while i <= n do
        set fact = fact * i;
        set i = i + 1;
    end while;

    select fact as Factorial;
end //
delimiter ;

call CalculateFactorial (10);

-- GenerateFibonacciSequence 

DELIMITER //
CREATE PROCEDURE GenerateFibonacciSequence (IN n INT)
BEGIN
    DECLARE fib1 INT DEFAULT 0;
    DECLARE fib2 INT DEFAULT 1;
    DECLARE fib INT;

    IF n >= 1 THEN
        SELECT fib1 AS FibonacciTerm;
    END IF;

    IF n >= 2 THEN
        SELECT fib2 AS FibonacciTerm;
    END IF;

    SET n = n - 2;

    WHILE n > 0 DO
        SET fib = fib1 + fib2;
        SET fib1 = fib2;
        SET fib2 = fib;

        SELECT fib AS FibonacciTerm;

        SET n = n - 1;
    END WHILE;
END //
DELIMITER ;

CALL GenerateFibonacciSequence(10);
