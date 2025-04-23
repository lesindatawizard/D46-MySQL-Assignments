create database School;

create table Student (
Roll_No int primary key,
full_name varchar(150) not null,
Marks int not null, 
Grade char(1) check(grade in ('A','B','C','D','E','F')) 
);
desc student;

ALTER TABLE student
MODIFY Roll_no INT AUTO_INCREMENT;

insert into student (Roll_No, full_name, Marks, Grade)
values
(default,'Lesin Fargan Necholi',94,'A'),
(default,'Rejoy Sabin Thomas',86,'B'),
(default,'Rino Jervin',73,'C'),
(default,'Aadithya Prakash',65,'D'),
(default,'Suhail K Jaffer',54,'E'),
(default,'Irfan Ayub',41,'F');

# Use the select command to display the table.
select * from student;

# Add a column named Contact to the STUDENT table.
alter table student
add contact int(10);

# Remove the Grade column from the Student table.
alter table student
drop column Grade;

# Rename the table to CLASSTEN.
rename table student to classten;

select * from classten;

# Delete all rows from the table.
truncate table classten;

# Remove the table from the database.
drop table classten;




