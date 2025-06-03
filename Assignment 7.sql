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

# 1. Add a new column called DOB in Persons table with data type as Date.
Alter table Persons add column DOB date;
select * from Persons;

# 2. Write a user-defined function to calculate age using DOB.
Delimiter $$
create function Calculatedage (DOB date)
returns int
deterministic
No sql
Begin
return datediff(Current_date, DOB)/365.25;
end $$
Delimiter ;

# 3. Write a select query to fetch the Age of all persons using the function that has been created.
Update Persons set DOB = '2001-06-08' where ID=1;
Update Persons set DOB = '2000-04-18' where ID=2;
Update Persons set DOB = '2000-12-05' where ID=3;
Update Persons set DOB = '2001-05-31' where ID=4;
Update Persons set DOB = '2001-01-25' where ID=5;
Update Persons set DOB = '2000-12-12' where ID=6;
Update Persons set DOB = '2001-03-16' where ID=7;
Update Persons set DOB = '2000-11-08' where ID=8;
Update Persons set DOB = '2001-02-24' where ID=9;
Update Persons set DOB = '1999-12-06' where ID=10;
select * from Persons;
select ID, F_name, L_name, DOB, Calculatedage(DOB) as age from Persons; 

# 4. Find the length of each country name in the Country table.
select Country_name, length(Country_name) as totalcharacters from Country;

# 5. Extract the first three characters of each country's name in the Country table.
select Country_name, left(Country_name, 3) as Firstthreechar from Country;

# 6. Convert all country names to uppercase and lowercase in the Country table.
Select Country_name, ucase(Country_name) as Uname from Country;
Select Country_name, Lcase(Country_name) as Lname from Country;

