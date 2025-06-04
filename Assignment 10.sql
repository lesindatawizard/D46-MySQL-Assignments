create database teacherssalary;
use teacherssalary;

# Create a table named teachers with fields
create table teachers (
ID int primary key,
Name varchar(150) not null,
Subject varchar(150) not null,
Experience int not null,
Salary decimal(10,2)
);

Desc teachers;

# 1. Create a table named teachers with fields id, name, subject, experience and salary and insert 10 rows. 
insert into teachers (id, name, subject, experience, salary) 
values
(1, 'Lesin', 'Science', 3, 32000),
(2, 'Rino', 'Maths', 1, 27000),
(3, 'Ubaidullah', 'English', 0, 38000),
(4, 'Rejoy Sabin', 'Science', 2, 25000),
(5, 'Ashnad', 'Maths', 4, 39000),
(6, 'Shammas', 'English', 0, 20000),
(7, 'Suhail', 'Science', 1, 23000),
(8, 'Joel K', 'Maths', 4, 35000),
(9, 'Ridha', 'English', 2, 30000),
(10, 'Sera', 'Science', 3, 28000);

select * from teachers;

# 2. Create a before insert trigger named before_insert_teacher that will raise an error “salary cannot be negative” if the salary inserted to the table is less than zero.
Delimiter // 
create trigger before_insert_teacher
before insert on teachers
for each row
begin
if new.Salary <0 then
Signal sqlstate '45000' 
set message_text = "Salary cannot be negetive";
end if ;
end //
Delimiter ;
show triggers;
insert into teachers values(11,'Irfan', 'Maths', 3, -32000);
select * from teachers;

# 3. Create an after insert trigger named after_insert_teacher that inserts a row with teacher_id,action, timestamp to a table called teacher_log when a new entry gets inserted to the teacher table.
create table teacher_log (
teacher_Id int primary key,
action varchar(150),
timestamp timestamp default current_timestamp
);
desc teacher_log;

-- performing after insert trigger
Delimiter //
create trigger after_insert_teacher
After insert on teachers
for each row
begin
insert into teacher_log(teacher_id, action, timestamp)
values(new.ID, 'Insert', now());
end //
Delimiter ;
show triggers;
-- checking for values when inserting new rows
insert into teachers values
(12, 'Snigdha','English', 2, 29000),
(13, 'Jahnvi', 'Science', 3, 33000);
Select * from teachers;
select * from teacher_log;

# 4. Create a before delete trigger that will raise an error when you try to delete a row that has experience greater than 10 years.
Delimiter // 
create trigger before_delete_teacher
before delete on teachers
for each row
begin
if old.Experience >1 then
Signal sqlstate '45000' 
set message_text = "Error in deleting teachers having experience greater than 1" ;
end if ;
end //
Delimiter ;
show triggers;
select * from teachers;
Delete from teachers where ID = 4;
Delete from teachers where ID = 2;
select * from teachers;

# 5. Create an after delete trigger that will insert a row to teacher_log table when that row is deleted from teacher table.
Delimiter // 
create trigger after_delete_teacher
After delete on teachers
for each row
begin
insert into teacher_log (teacher_id, action, timestamp)
values (old.ID, 'Delete', now());
end //
Delimiter ;
show triggers;
select * from teachers;
select * from teacher_log;
delete From teachers where ID =13;
select * from teacher_log;