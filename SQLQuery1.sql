CREATE TABLE customers(
id int NOT NULL,
NAME VARCHAR(20)NOT NULL,
EMAIL VARCHAR (20),
PRIMARY KEY(ID)
);

CREATE TABLE orders(
Ordernm int ,
 customer_name VARCHAR(20),
delivery_date Date,
delivery_status Date,
);


CREATE TABLE Products(
products_num int,
products_name VARCHAR(20),
price float,
Date_Created Date
);

CREATE TABLE Employees(
Emp_ID int,
Emp_Name VARCHAR(20),
Salary float,

);
Select * From customers;
Select * From orders;
Select * From Products;
Select * From Employees;