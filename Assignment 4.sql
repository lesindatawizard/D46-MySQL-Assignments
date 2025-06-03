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

desc persons;

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


# 1. List the distinct country names from the Persons table
select distinct Country_name from Persons;

# 2. Select first names and last names from the Persons table with aliases.
select F_name as First_name, L_name as Last_name from Persons;

# 3. Find all persons with a rating greater than 4.0.
select F_name, L_name from Persons where Rating > 4.0;

# 4. Find countries with a population greater than 10 lakhs.
select Country_name from Country where population > 1000000;

# 5. Find persons who are from 'Japan' or have a rating greater than 4.5.
select * from Persons where Country_name = 'Japan' or Rating >4.5;

# 6. Find all persons where the country name is NULL.
select * from Persons where Country_name is null;

# 7. Find all persons from the countries 'Brazil', 'Italy', and 'Saudi Arabia'.
select * from Persons where Country_name in('Italy','Brazil','Saudi Arabia');

# 8. Find all persons not from the countries 'Italy' and 'Brazil'.
select * from Persons where Country_name not in('Brazil', 'Italy');

# 9. Find all countries with a population between 5 lakhs and 20 lakhs. 
select * from Country where Population between 500000 and 2000000;

# 10. Find all countries whose names do not start with 'C'.
select * from Country where Country_name not like 'C%';