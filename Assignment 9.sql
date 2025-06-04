create database Workers;
Use Workers;

# Create a table named Worker with fields
create table worker (
  worker_id int auto_increment primary key,
  firstname varchar(150),
  lastname varchar(150),
  salary int,
  joiningdate date,
  department varchar(150)
);

Desc Worker;

# Insert 14 rows

insert into Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department) 
values
(1, 'Lesin', 'Fargan', 34500, '2025-05-02', 'Operations'),
(2, 'Rino', 'Jervin', 29000, '2025-05-10', 'Accounts'),
(3, 'Ubaidullah', 'Kuniyan', 37000, '2025-05-23', 'Procurement'),
(4, 'Rejoy Sabin', 'Thomas', 22000, '2025-05-14', 'Operations'),
(5, 'Ashnad', 'Ameer', 44000, '2025-05-29', 'Accounts'),
(6, 'Shammas', 'Shukoor', 42500, '2025-05-08', 'Procurement'),
(7, 'Suhail', 'Jaffer', 23000, '2025-05-17', 'Operations'),
(8, 'Joel K', 'Mathew', 31000, '2025-05-05', 'Accounts'),
(9, 'Ridha', 'Mariam', 44500, '2025-05-26', 'Procurement'),
(10, 'Sera', 'Paul', 27000, '2025-05-13', 'Operations'),
(11, 'Aarav', 'Sharma', 38000, '2025-05-01', 'Accounts'),
(12, 'Ananya', 'Singh', 32000, '2025-05-20', 'Procurement'),
(13, 'Karan', 'Patel', 22500, '2025-05-07', 'Operations'),
(14, 'Priya', 'Rao', 43500, '2025-05-31', 'Accounts');

select * from Worker;

# Sample store Procedure for checking purposes

Delimiter $$
create procedure getworker (IN id INT)
begin
select * from Worker where id = Worker_Id;
end $$
Delimiter ;
call getworker(1);

# 1. Create a stored procedure that takes in IN parameters for all the columns in the Worker table and adds a new record to the table and then invokes the procedure call.
delimiter //
create procedure add_worker(
  in add_worker_id int,
  in add_firstname char(25),
  in add_lastname char(25),
  in add_salary int,
  in add_joiningdate date,
  in add_department char(25)
)
begin
  insert into worker values (add_worker_id, add_firstname, add_lastname, add_salary, add_joiningdate, add_department);
end //
delimiter ;

# Adding a new record
call Add_Worker(15, 'Kiran', 'Bhaskar', 33000, '2025-05-28', 'Accounts');
select * from Worker;

# 2. Write stored procedure takes in an IN parameter for WORKER_ID and an OUT parameter for SALARY.
Delimiter //
create Procedure GetWorkerSalary (
    IN Get_Worker_Id INT,
    OUT p_Salary INT)
Begin
    Select Salary into p_Salary
    from Worker
    where Worker_Id = Get_Worker_Id;
End //
Delimiter ;
# GetWorkerSalary procedure
call GetWorkerSalary(10, @Salary);
select @Salary as Get_Salary;

# 3. Create a stored procedure that takes in IN parameters for WORKER_ID and DEPARTMENT.
Delimiter //
create procedure Update_WorkerDepartment (
    IN P_Worker_Id INT,
    IN p_Department varchar(150))
Begin
    Update Worker
    set Department = p_Department
    WHERE Worker_Id = p_Worker_Id;
    END //
Delimiter ;
# Update_WorkerDepartment procedure
call Update_WorkerDepartment(5, 'Operations');
call Update_WorkerDepartment(11, 'Operations');
select * from Worker;

# 4. Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT parameter for p_workerCount.
Delimiter $$
create procedure Count_worker_Departmentwise(IN p_Department varchar(150),
OUT p_WorkerCount INT)
begin
select count(Worker_Id) into p_WorkerCount
from worker
where Department = p_Department;
end $$
Delimiter ;
# Count_worker_Departmentwise
call Count_worker_Departmentwise('Accounts', @WorkerCount);
select @WorkerCount as Workers_in_Departments;

# 5. Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT parameter for p_avgSalary.
Delimiter //
create procedure Get_AvgSalaryinDepartment(IN p_Department varchar(150),
OUT p_AvgSalary Decimal(10,2))
Begin
select avg(Salary) into p_AvgSalary
From Worker
Where Department = p_Department;
end //
Delimiter ; 
# Get_Avg Salary in Department
call Get_AvgSalaryinDepartment('Operations', @avgSalary);
select @avgSalary as AverageSalary;