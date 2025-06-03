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

# 1. Perform inner join, Left join, and Right join on the tables.
# inner join
select P.ID, P.F_name, P.L_name, P.Population, P.Rating, C.Country_name 
from Persons P INNER JOIN Country C on P.Country_ID = C.ID;

# left join
select P.ID, P.F_name, P.L_name, P.Population, P.Rating, C.Country_name 
from Persons P LEFT JOIN Country C on P.Country_ID = C.ID;

# right join
select P.ID, P.F_name, P.L_name, P.Population, P.Rating, C.Country_name 
from Persons P RIGHT JOIN Country C on P.Country_ID = C.ID;

# 2. List all distinct country names from both the Country and Persons tables.
select Country_name as Countryname from Country
UNION
select Country_name as Cname from Persons;

# 3. List all country names from both the Country and Persons tables, including duplicates.
select Country_name as Countryname from Country
UNION ALL
select Country_name as Cname from Persons;

# 4. Round the ratings of all persons to the nearest integer in the Persons table.
select ID, F_name, L_name, Rating, round(Rating) as Rating_rounded from Persons;
