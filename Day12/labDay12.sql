create database TriggersDemo;

use TriggersDemo;

create table orders (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR(255),
    orderDate DATETIME,
    totalAmount DECIMAL(10, 2)
);

drop table orders;

INSERT INTO Orders (orderID, customerName, orderDate, totalAmount) VALUES
(1, 'John Doe', '2023-10-17', 1000.50),
(2, 'Jane Smith', '2023-05-16', 2050.75),
(3, 'David Patel', '2023-10-15', 500.00),
(4, 'Sarah Khan', '2023-06-14', 705.20),
(5, 'Rahul Sharma', '2023-10-13', 3000.00),
(6, 'Priya Gupta', '2023-03-12', 150.50),
(7, 'Amit Verma', '2023-10-11', 2000.25),
(8, 'Neha Singh', '2023-01-10', 4050.00),
(9, 'Rajesh Kumar', '2023-10-09', 800.75),
(10, 'Anita Mehta', '2023-10-08', 175.00),
(11, 'Vikram Singh', '2023-04-07', 1020.50),
(12, 'Pooja Sharma', '2023-10-06', 350.25),
(13, 'Sanjay Gupta', '2023-08-05', 225.00),
(14, 'Sneha Verma', '2023-10-04', 905.75),
(15, 'Aakash Patel', '2023-10-03', 180.50),
(16, 'Kavita Singh', '2023-10-02', 400.25),
(17, 'Ravi Verma', '2023-05-01', 2075.00),
(18, 'Smita Sharma', '2023-07-30', 125.50),
(19, 'Aryan Kapoor', '2023-07-29', 275.75),
(20, 'Nisha Gupta', '2023-08-28', 150.00);


desc orders;

-- ------------------------------------------------------------------------
delimiter //
create trigger BeforeInsertTrigger
before insert on orders
FOR EACH ROW
BEGIN
    SET new.orderDate = NOW();
END //
DELIMITER ;


-- ------------------------------------------------------------------------
delimiter //

create trigger BeforeUpdateTrigger
before update on orders
for each row
begin
    if new.totalamount < old.totalamount then
        set new.totalamount = old.totalamount;
    end if;
end //

delimiter ;

drop trigger BeforeUpdateTrigger;

-- ------------------------------------------------------------------------
drop trigger BeforeDeleteTrigger;

delimiter //

create trigger BeforeDeleteTrigger
before delete on orders
for each row

begin
    set @errormessage = null;
	if old.totalamount > 1000 then
    set @errormessage = 'Cannot delete records with totalamount greater than 1000.';
	end if;

end //

delimiter ;



insert into orders (customername, totalamount) values ('Renu Dubey', 1000.50);
insert into orders (customername, totalamount) values ('Jasmin Sharma', 2500.75);
insert into orders (customername, totalamount) values ('Divya Patel', 500.00);


SELECT * FROM Orders;

-- -------------

delete from orders WHERE TotalAmount > 1000;



