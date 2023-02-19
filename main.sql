

-- 5 table
-- 1 SUBQUERY
-- 1 Arggregate function

.open restaurant.db
.mode table
.header on

  -- table 1 
drop table desserts;
CREATE TABLE desserts(
  desserts_id INT primary key,
  desserts_name TEXT,
  desserts_price INT
);

INSERT INTO desserts values
(1,'Pancake',25),
(2,'Muffin',40),
(3,'Cake Roll',30),
(4,'Brownie',50),
(5,'Cookie',30);

select * from desserts;


-- table 2  
DROP TABLE if exists menus;
CREATE TABLE menus  (
  menus_id int primary key ,
  menus_name text,
  menus_price REAL
);
INSERT INTO menus VALUES 
(1, 'Papaya salad' , 60),
(2, 'Grilled chicken', 120),
(3, 'Fried rice', 50),
(4, 'Congee', 40),
(5, 'Fried chicken', 100);

select * from menus;

-- table 3
  DROP TABLE if exists customers ;
CREATE TABLE customers(
  customers_id int primary key, 
  customers_name text,
  customers_age int,
  customers_country text,
  customers_phone text
);
INSERT INTO customers VALUES 
  (1, 'John',38,'USA','090-090-9999'),
  (2, 'Adam',23,'Spian','080-132-3355'),
  (3, 'Peter',32,'Thailand','063-845-7643'),
  (4, 'Ethan',45,'USA','090-990-0099'),
  (5, 'Nova',28,'UAE','099-332-5643');

select * from customers;

--Table 4 
  DROP table if exists orders;
CREATE table orders(
  orders_id int primary key,
  customers_id int,
  menus_id int,
  desserts_id int,
 employee_id int  
);
INSERT INTO orders values
  (1,1,1,1,1),
  (2,2,2,4,2),
  (3,3,4,3,3),
  (4,4,5,2,2),
  (5,2,3,5,1);

select * from orders;

 -- table 5
DROP TABLE if exists employee ;
CREATE TABLE employee(
	employee_id int primary key,
	employee_name text ,
	employee_phone text
  );

INSERT INTO employee VALUES 
(1,'Jane','062-556-3325'),
(2,'Bank','068-213-2265'),
(3,'PUI','063-652-6635');

select * from employee;


SELECT * FROM (SELECT COUNT(menus_name),
  SUM(menus_price),
  menus_name
FROM menus
LEFT JOIN orders
ON menus.menus_id = orders.menus_id
GROUP by menus_name
ORDER BY count(menus_name) desc);

SELECT * FROM(
 SELECT 
   customers_name ,
  employee_name ,
  menus_name ,
  desserts_name 
   
FROM orders            AS od
JOIN menus as mn     ON  od.menus_id = mn.menus_id 
JOIN desserts as de  ON  od.desserts_id = de.desserts_id
JOIN customers  as cu ON  od.customers_id = cu.customers_id
JOIN employee as em  ON  od.employee_id = em.employee_id
  );

