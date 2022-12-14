CREATE TABLE customers0(
ID int primary key,
NAME VARCHAR(20),
EMAIL VARCHAR (20),

);

CREATE TABLE orders1(
Ordernum int primary key,
customer_name VARCHAR(20),
delivery_date Date,
delivery_status Date,
customer_id int foreign key references customers0(ID),
Product_num int foreign key references Products2(Product_num)


);


CREATE TABLE Products2(
Product_num int primary key,
products_name VARCHAR(20),
price float,
Date_Created Date
);


Select * From customers0;
Select * From orders1;
Select * From Products2;

insert into customers0 values ( 5 ,'ayah ', 'ayah@.com') , ( 1 ,'alaa ', 'alaa@.com') , ( 9 ,'saja ', 'saja@.com');
insert into orders1 values ( 2 , 'abood' ,'8-7-2016' , '11-2-2018'), ( 3 , 'anas' ,'1-4-2017' , '5-12-2020'), ( 9 , 'amer' ,'6-1-2022' , '5-12-2023');
insert into Products2 values (565656,'drss',525252.2,'1-1-2023'),(121212,'shoes',2222.2,'2-2-2023'),(898989,'bag',111.9,'6-4-2023');

select customers0.NAME , orders1.Ordernum
from customers0 inner join orders1
on customers0.ID=orders1.customer_id;


select customers0.Name, orders1.Ordernum
from customers0 left join orders1
on customers0.ID=orders1.customer_id;

select Products2.products_name , orders1.Ordernum,customers0.Name
from Products2
right join orders1 on Products2.Product_num=orders1.Product_num
right join customers0
on customers0.ID=orders1.customer_id;

select * 
from Products2
FULL OUTER JOIN orders1 on Products2.Product_num=orders1.product_num
FULL OUTER JOIN customers0
on customers0.ID=orders1.customer_id;