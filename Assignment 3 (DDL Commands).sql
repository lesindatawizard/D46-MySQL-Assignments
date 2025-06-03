Create database Management;
Use management;

#Create a table named Managers with fields
create table Managers (
Manager_ID int primary key not null unique,
First_Name varchar(150) not null,
Last_name varchar(150) not null,
DOB date not null,
Age int check (Age > 18 and Age < 55),
last_update timestamp default current_timestamp,
Gender char(1) check (Gender in('M', 'F','O')),
Department varchar(150) not null,
Salary decimal(10,2) check(salary>0) not null);

Desc Managers;

# 1. Insert 10 rows.
insert into Managers (Manager_ID, First_Name, Last_Name, DOB, Age, Gender, Department, Salary)  
values
(1, 'Lesin', 'Fargan', '2000-07-15', 24, 'M', 'Science', 35000),  
(2, 'Rino', 'Jervin', '2000-01-26', 25, 'M', 'Social Science', 29000),  
(3, 'Ubaidullah', 'Kuniyan', '2000-01-25', 25, 'M', 'Accountancy', 32000),  
(4, 'Rejoy Sabin', 'Thomas', '2000-06-01', 25, 'M', 'English', 38000),  
(5, 'Ashnad', 'Ameer', '2000-10-02', 24, 'M', 'Business', 23000),  
(6, 'Shammas', 'Shukoor', '2000-09-21', 24, 'M', 'Economics', 20000),  
(7, 'Suhail', 'Jaffer', '1999-06-08', 25, 'M', 'Biology', 41000),  
(8, 'Joel K', 'Mathew', '2000-06-01', 25, 'M', 'Maths', 39000),  
(9, 'Ridha', 'Mariam', '2000-08-07', 24, 'F', 'Multimedia', 18000),  
(10, 'Sera', 'Paul', '2000-05-15', 25, 'F', 'Chemistry', 22000);

select * from Managers;
 
# 2. Write a query that retrieves the name and date of birth of the manager with Manager_Id 1
 select First_Name, Last_name, DOB
 from Managers where Manager_ID = 1;
 
# 3. Write a query to display the annual income of all managers.
 select Manager_ID, First_name, Last_name, (Salary * 12) as Annual_Income
 from Managers;
 
# 4. Write a query to display records of all managers except 'Joel K'.
 Select * from Managers where not First_name = 'Joel K';
 
# 5. Write a query to display details of managers whose department is English and earns more than 25000 per month.
 Select * from Managers
 where Department = 'English' and Salary > 25000;
 
# 6. Write a query to display details of managers whose salary is between 10000 and 35000.
 Select * from Managers
 Where salary between 10000 and 35000;