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

# 1. Write an SQL query to print the first three characters of Country_name from the Country table.
select left(Country_name, 3) as Firstchar from Country;

# 2. Write an SQL query to concatenate first name and last name from Persons table.
select concat(F_name, ' ', L_name) as Fullname from Persons;
select * from persons;

# 3. Write an SQL query to count the number of unique country names from Persons table. 
select count(distinct(Country_name)) as Uniquecountry from Persons;

# 4. Write a query to print the maximum population from the Country table.
select Max(Population) as Maxpopulation from Country;

# 5. Write a query to print the minimum population from Persons table.
select min(Population) as Minpopulation from Persons;

# 6. Insert 2 new rows to the Persons table making the Lname NULL.
alter table Persons
modify L_name varchar(150);
Insert into Persons 
values
(11, 'Aadithya', Null, 5454656532, 4.9, 8,'Mexico'),
(12, 'Irfan', Null, 1245369878, 5.3, 6,'Italy');
select * from persons;
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
select * from persons;
Select count(L_name) as nonnullLname from Persons;

# 7. Write a query to find the number of rows in the Persons table.
Select count(ID) as TotalRaws from Persons;

# 8. Write an SQL query to show the population of the Country table for the first 3 rows.
Select Population from Country limit 3;

# 9. Write a query to print 3 random rows of countries.
select * from Country order by rand() limit 3;

# 10. List all persons ordered by their rating in descending order.
Select F_name, L_name, Rating from persons order by Rating desc;

# 11. Find the total population for each country in the Persons table.
select Country_ID, sum(Population) as Totalpopulation From Persons group by Country_ID;

# 12. Find countries in the Persons table with a total population greater than 50,000
select Country_ID, sum(Population) as Totalpopulation From Persons group by Country_ID having sum(population)>50000;

# 13. List the total number of persons and average rating for each country, but only for countries with more than 2 persons, ordered by the average rating in ascending order.
select Country_ID, Count(*) as Totalpersons, Avg(Rating) As Avereagerate from Persons
group by Country_ID having count(*)>2 order by Avg(Rating) asc;

# 13. List the total number of persons and average rating for each country, but only for countries with  2 persons, ordered by the average rating in ascending order.
select Country_ID, Count(*) as Totalpersons, Avg(Rating) As Avereagerate from Persons
group by Country_ID having count(*)>=2 order by Avg(Rating) asc;
