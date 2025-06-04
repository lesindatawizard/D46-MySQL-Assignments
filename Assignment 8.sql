create database Country_and_Population;
use Country_and_Population;

# Create a table named Country with fields
create table Country (
ID int primary key auto_increment,
Country_name varchar(150) not null,
Population varchar(150) not null,
Area decimal(10,2) not null
);

desc Country;

# Create another table named Persons with fields
create table Persons (
ID int primary key,
F_name varchar(150) not null,
L_name varchar(150) not null,
Population bigint,
Rating decimal(3, 1) check (Rating >=0 and Rating <=10),
Country_ID int,
Country_name varchar(150),
foreign key (Country_ID) references Country(ID)
);

# Insert 10 rows
Insert into Country (Country_name, Population, Area) 
values
('Brazil', 215000000, 8516000.00),
('Germany', 83000000, 357000.00),
('Japan', 125000000, 377975.00),
('Russia', 144000000, 17098242.00),
('South Korea', 52000000, 100210.00),
('Italy', 60000000, 301340.00),
('Spain', 47000000, 505990.00),
('Mexico', 126000000, 1964375.00),
('Indonesia', 273000000, 1904569.00),
('Saudi Arabia', 35000000, 2149690.00);

select * from Country;

# Insert 10 rows
insert into Persons 
Values
(1, 'Lesin', 'Fargan', 65655677809, 4.1, 1, 'Brazil'),
(2, 'Rino', 'Jervin', 76568888782, 5.9, 2, 'Germany'),
(3, 'Ubaidullah', 'Kuniyan', 342546326, 7.2, 3, 'Japan'),
(4, 'Rejoy Sabin', 'Thomas', 5436657677, 2.8, 4, 'Russia'),
(5, 'Ashnad', 'Ameer', 11122233344, 8.4, 5, 'South Korea'),
(6, 'Shammas', 'Shukoor', 8765432809, 5.7, 6, 'Italy'),
(7, 'Suhail', 'Jaffer', 896432567890, 6.8, 7, 'Spain'),
(8, 'Joel K', 'Mathew', 76789879997, 4.6, 8, 'Mexico'),
(9, 'Ridha', 'Mariam', 55544466677, 5.3, 9, 'Indonesia'),
(10, 'Sera', 'Paul', 6256678898, 3.7, 10, 'Saudi Arabia');

select * from Persons;

# 1. Find the number of persons in each country.
select Country_name, count(*) as Number_of_person
from Persons
group by Country_name;

# 2. Find the number of persons in each country sorted from high to low.
select Country_name, count(*) as Number_of_person
from Persons
group by Country_name order by Number_of_person;

# 3. Find out an average rating for Persons in respective countries if the average is greater than 3.0
Select Country_name, avg(Rating) as AvgRating
from Persons
group by Country_name having AvgRating>3.0;

# 4. Find the countries with the same rating as the Germany. (Use Subqueries)
select Country_name, Rating
from Persons
where Rating = (
    select avg(Rating)
    from Persons
    where Country_name = 'Germany'
);

# 5. Select all countries whose population is greater than the average population of all nations.
select Country_name, Population
from country 
where Population > (select Avg (Population) from Country);

# Create a database named Product and create a table called Customer

create database Product;
Use Product;

create table Customer (
Customer_Id int auto_increment primary key,
First_name varchar(150) not null,
Last_name varchar(150) not null,
Email varchar(150) not null,
Phone_no varchar(10) not null,
Address varchar(500),
City varchar(150),
State varchar(150),
Zip_code varchar(6),
Country varchar(150)
);

Desc Customer;

# Insert 10 rows
insert into Customer (Customer_Id, First_name, Last_name, Email, Phone_no, State, Country) 
values
(default, 'Lesin', 'Fargan', 'lesin.fargan@gmail.com', 6556677809, 'São Paulo', 'Brazil'),
(default, 'Rino', 'Jervin', 'rino.jervin@gmail.com', 6568888782, 'Munich', 'Germany'),
(default, 'Ubaidullah', 'Kuniyan', 'ubaidullah.kuniyan@gmail.com', 342546326, 'Moscow', 'Russia'),
(default, 'Rejoy Sabin', 'Thomas', 'rejoy.sabin.thomas@gmail.com', 5436657677, 'Rome', 'Italy'),
(default, 'Ashnad', 'Ameer', 'ashnad.ameer@gmail.com', 1122233344, 'Madrid', 'Spain'),
(default, 'Shammas', 'Shukoor', 'shammas.shukoor@gmail.com', 8765432809, 'Berlin', 'Germany'),
(default, 'Suhail', 'Jaffer', 'suhail.jaffer@gmail.com', 6432567890, 'Brasília', 'Brazil'),
(default, 'Joel K', 'Mathew', 'joel.k.mathew@gmail.com', 7678987997, 'Naples', 'Italy'),
(default, 'Ridha', 'Mariam', 'ridha.mariam@gmail.com', 5544466677, 'Barcelona', 'Spain'),
(default, 'Sera', 'Paul', 'sera.paul@gmail.com', 6256678898, 'Saint Petersburg', 'Russia');

select * from customer;

# 1. Create a view named customer_info for the Customer table that displays Customer’s Full name and email address.
create view Customer_info as
select First_name, Last_name, concat(First_name,' ',Last_name)
as fullname, Email from Customer;

select* from Customer_info;

# 2. Create a view named US_Customers that displays customers located in the Russia.
Create view Russia_Customer as
Select * from Customer where Country = 'Russia';

select First_name, Last_name, Country from Russia_customer;

# 3. Create another view named Customer_details with columns full name
Create view Customer_Details as
select First_name, Last_name, concat(First_name,' ',Last_name) as
Full_name, Email, Phone_no, State from Customer;


select * from Customer_Details;

# 4. Update phone numbers of customers who live in Germany for Customer_details view.
Update Customer set Phone_No =7677657655 where Customer_Id=2 and Country = 'Germany';
Update Customer set Phone_No =7456566665 where Customer_Id=6 and Country = 'Germany';

drop view if exists Customer_Details;
Create view Customer_Details as
select First_name, Last_name, concat(First_name,' ',Last_name) as
Full_name, Email, Phone_no, State, Country from Customer;

Select * from Customer_Details where country = 'Germany';

# 5. Count the number of customers in each state and show only states with more than 5 customers.
Select State, count(State) as Count_customer from customer group by state
having Count_customer>5;

# 6. Write a query that will return the number of customers in each state, based on the "state" column in the "customer_details" view.
Select State, count(State) as No_of_customer from Customer_Details group by state;

# 7. Write a query that returns all the columns from the "customer_details" view, sorted by the "state" column in ascending order.
select * from Customer_details order by state asc;



