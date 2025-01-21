create database sales;
create table orders(order_id int primary key , customer_name varchar(30) not null , product_category varchar(20) not null, ordered_item char(2) , contact_no int);
alter table orders add order_quantity int ;
desc orders;
rename table orders to sales_orders;
desc sales_orders;
insert into sales_orders values(100,"manu",'electronics',1,'smartphone','91881174');
insert into sales_orders values(101,"subash",'electronics',1,'laptop','91321174');
insert into sales_orders values(102,"john",'furniture',1,'chair','93881174');
insert into sales_orders values(103,"reshma",'furniture',1,'desk','91883474');

select customer_name,ordered_items from sales_orders;
update sales_orders set ordered_items='desktop' where ordered_items='laptop';

drop table sales_orders;

