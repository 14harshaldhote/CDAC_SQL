use dac_sept23;

create table ResturantProduct(
id int,
category varchar(20),
prodcut varchar(20),
value int
);
Drop table ResturantMenu;

select * from ResturantMenu;

insert into Resturantproduct
value (1,"Non-veg","Chicken",150),(2,"Non-veg","Mutton",200),(3,"Non-veg","Fish",220),(4,"Non-veg","Prawns",250),(5,"Veg","Gobi",100),(6,"veg","Parota",45),(7,"veg","vegbriyani",150);

CREATE TABLE ResturantOrder (
    OrderNumber INT,
    OrderLine int,
    Part varchar(2)
);
Drop table Resturantorder;

insert into ResturantOrder
value (10001,1,"A"),(10001,2,"B"),(10001,3,"C"),(10002,1,"A"),(10002,2,"B"),(10002,3,"C"),(10003,1,"A");

select * from Resturantorder;

#Write SQL query to add a primary key constraint to an existing table named "Products" for the "product_id" column
Alter table ResturantProduct add constraint productid primary key (id);

desc Resturantproduct;

#Write SQL query to add a foreign key constraint to an existing table named "OrderDetails" that references the "product_id" column in the "Products" table.
ALTER TABLE ResturantOrder
MODIFY Part VARCHAR(20);
ALTER TABLE ResturantOrder
ADD CONSTRAINT FK_ResturantOrder_ResturantProduct
FOREIGN KEY (OrderLine )
REFERENCES ResturantProduct(id);

desc Resturantorder;

#Write a SQL query to retrieve a list of products from a table named "Products" sorted in ascending order by their price.
select * from Resturantproduct order by value ASC;

#Write a SQL query to retrieve a list of employees from a table named "Employees"
#sorted first by their department in ascending order and then by their hire date in
#descending order

