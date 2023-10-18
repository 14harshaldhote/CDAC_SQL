create database Inventory;

use Inventory;

create table  products (
productid int auto_increment primary key,
productname varchar(255),
stockquantity int,
unitprice decimal(10, 2)
);

create table  productaudit (
auditid int auto_increment primary key,
productid int,
operation varchar(10),
auditdate datetime
);




-- Create the trigger for insert
delimiter $$
create trigger ProductAuditTrigger_INSERT
after insert on products
for each row
begin
    insert into productaudit (productid, operation, auditdate)
    values (new.productid, 'INSERT', now());
end;
$$
delimiter ;

-- Create the trigger for update
delimiter $$
create trigger ProductAuditTrigger_UPDATE
after update on products
for each row
begin
    insert into productaudit (productid, operation, auditdate)
    values (new.productid, 'UPDATE', now());
end;
$$
delimiter ;

-- Create the trigger for delete
delimiter $$
create trigger ProductAuditTrigger_DELETE
after delete on products
for each row
begin
    insert into productaudit (productid, operation, auditdate)
    values (old.productid, 'DELETE', now());
end;
$$
delimiter ;

-- Insert queries (5 INSERT queries)
insert into products (productname, stockquantity, unitprice) values ('Product A', 100, 10.00);
insert into products (productname, stockquantity, unitprice) values ('Product B', 200, 15.50);
insert into products (productname, stockquantity, unitprice) values ('Product C', 50, 5.99);
insert into products (productname, stockquantity, unitprice) values ('Product D', 300, 12.25);
insert into products (productname, stockquantity, unitprice) values ('Product E', 75, 8.75);

select * from products;

-- Update queries (2 UPDATE queries)
update products set stockquantity = 120 where productid = 1;
update products set unitprice = 18.75 where productid = 2;

-- Delete query (1 DELETE query)
delete from products where productid = 3;




