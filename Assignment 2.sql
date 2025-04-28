create database sales;
use sales;
create table orders (
  order_id int not null primary key,
  customer_name varchar(150) not null,
  product_category varchar(150),
  ordered_item varchar(150),
  phonenumber varchar(15)
);
desc orders;
alter table orders
modify phonenumber varchar(150) unique;
#  1. Add a new column named “order_quantity” to the orders table.
alter table orders
add order_quantity int;
desc orders;
# 2. Rename the orders table to the sales_orders table.
rename table orders to sales_orders;
alter table sales_orders 
modify order_id int not null auto_increment;
desc sales_orders;
# 3. Insert 10 rows into the sales_orders table.
insert into sales_orders (customer_name, product_category, ordered_item, phonenumber, order_quantity)
values
('Lesin Fargan Necholi', 'Video Games and Consoles', 'Playstation 5', '9545635353', 8),
('Rino Jervin', 'Video Games and Consoles', 'Playstation 5', '8537538954', 5),
('Ubaidullah', 'Video Games and Consoles', 'Playstation 5', '9528537535', 8),
('Ashnad Ameer', 'Video Games and Consoles', 'Playstation 5', '9528535436', 2),
('Shammas Shukoor', 'Video Games and Consoles', 'Playstation 5', '8535632656', 9),
('Aadithya Prakash', 'Video Games and Consoles', 'Playstation 5', '7539554345', 2),
('Irfan Ayyub', 'Video Games and Consoles', 'Playstation 5', '8543765345', 7),
('Joel Mathew', 'Video Games and Consoles', 'Playstation 5', '9476345876', 2),
('Umer Farooq', 'Video Games and Consoles', 'Playstation 5', '8543765467', 5),
('Shankar Dey', 'Video Games and Consoles', 'Playstation 5', '8642966846', 7);
select * from sales_orders;
# 4. Retrieve customer_name and Ordered_Item from the sales_orders table.
select customer_name, ordered_item from sales_orders;
# 5. Use the update command to change the name of the product for any row.
update sales_orders
set ordered_item = 'Playstation 5 Slim'
where order_id = 9;
select * from sales_orders;
# 6. Delete the sales_orders table from the database.
drop table sales_orders;
select * from sales_orders;