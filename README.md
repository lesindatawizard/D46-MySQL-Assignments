# D46-MySQL-Assignments
## Assignment 1 – DDL Commands

### Report on using DDL (CREATE, ALTER, DROP, RENAME, TRUNCATE)

#### Steps Done:

1. **Created** a database named `School`.
2. **Created** a table `STUDENT` with fields: `Roll_No`, `Name`, `Marks`, `Grade`.
3. **Inserted** sample data into `STUDENT`.
4. **Displayed** the table using `SELECT`.
5. **Altered** the table to add a new column `Contact`.
6. **Removed** the `Grade` column using `ALTER TABLE DROP`.
7. **Renamed** the table from `STUDENT` to `CLASSTEN`.
8. **Deleted** all rows from `CLASSTEN` using `TRUNCATE`.
9. **Dropped** the `CLASSTEN` table from the database.

---

## Assignment 2 – DDL Constraints

### Report on constraints and basic alterations

#### Steps Done:

1. **Created** a database named `Sales`.
2. **Created** a table `Orders` with fields: `Order_Id`, `Customer_name`, `Product_Category`, `Ordered_item`, `Contact_No`.

   * Applied constraints: `PRIMARY KEY`, `UNIQUE`, `NOT NULL`.
3. **Added** a new column `order_quantity` using `ALTER TABLE`.
4. **Renamed** the table from `Orders` to `sales_orders`.
5. **Inserted** 10 rows of data into `sales_orders`.
6. **Retrieved** `customer_name` and `Ordered_item` using `SELECT`.
7. **Updated** a product name using `UPDATE`.
8. **Deleted** the `sales_orders` table using `DROP TABLE`.

---

## Assignment 3 – DML Commands

### Report on inserting and manipulating data using DML

#### Steps Done:

1. **Created** a table `Managers` with fields: `Manager_Id`, `First_name`, `Last_Name`, `DOB`, `Age`, `Last_update`, `Gender`, `Department`, `Salary`.

   * Applied constraints: `CHECK`, `NOT NULL`.
2. **Inserted** 10 rows into the `Managers` table.
3. **Queried** the name and DOB of the manager with `Manager_Id = 1`.
4. **Calculated** and displayed annual income (`Salary * 12`) of all managers.
5. **Displayed** all managers except the one named 'Aaliya'.
6. **Filtered** managers from the 'IT' department earning more than 25,000.
7. **Displayed** managers whose salaries are between 10,000 and 35,000.

---

## Assignment 4 – Querying Data

### Report on filtering and retrieving specific information

#### Steps Done:

1. **Created** `Country` and `Persons` tables.
2. **Inserted** 10 rows into both tables.
3. **Displayed** distinct country names from `Persons`.
4. **Used aliases** for first and last names in `SELECT`.
5. **Filtered** persons with `Rating > 4.0`.
6. **Filtered** countries with population > 1,000,000.
7. **Filtered** persons from 'USA' or with `Rating > 4.5`.
8. **Displayed** persons where `Country_name` is `NULL`.
9. **Filtered** persons from 'USA', 'Canada', or 'UK'.
10. **Excluded** persons from 'India' and 'Australia'.
11. **Filtered** countries with population between 500,000 and 2,000,000.
12. **Excluded** country names starting with 'C'.

---

## Assignment 5 – Sorting and Grouping Data

### Report on applying sorting, aggregation and group by

#### Steps Done:

1. **Printed** the first three characters of `Country_name` from `Country`.
2. **Concatenated** first and last names in `Persons`.
3. **Counted** unique `Country_name` in `Persons`.
4. **Found** the maximum population in `Country`.
5. **Found** the minimum population in `Persons`.
6. **Inserted** 2 rows into `Persons` with `Lname = NULL`, then counted non-null `Lname`.
7. **Counted** total rows in the `Persons` table.
8. **Displayed** the first 3 rows of population using `LIMIT`.
9. **Displayed** 3 random rows using `ORDER BY RAND()` and `LIMIT`.
10. **Sorted** persons by `Rating` in descending order.
11. **Grouped** persons by country and displayed total population.
12. **Filtered** countries with population > 50,000 from `Persons`.
13. **Displayed** count and average rating for countries with more than 2 persons, sorted by average rating ascending.

---

## Assignment 6 – Joins and Union

### Report on performing joins and combining data

#### Steps Done:

1. **Performed** `INNER JOIN`, `LEFT JOIN`, and `RIGHT JOIN` between `Persons` and `Country`.
2. **Listed** distinct country names from both tables using `UNION`.
3. **Listed** all country names from both tables (with duplicates) using `UNION ALL`.
4. **Rounded** person ratings to the nearest integer using `ROUND()`.

---

## Assignment 7 – Functions

### Report on user-defined functions and built-in SQL functions

#### Steps Done:

1. **Added** a new column `DOB` to `Persons` with `DATE` datatype.
2. **Created** a user-defined function `CalculatedAge()` to calculate age using DOB.
3. **Used** the function to fetch the age of all persons.
4. **Found** the length of each `Country_name`.
5. **Extracted** the first three characters of each country name.
6. **Converted** all country names to `UPPERCASE` and `lowercase`.

## Assignment 8 – Subqueries and Views

### Report on subqueries and view operations

#### Steps Done:

1. **Found** the number of persons in each country.
2. **Sorted** the number of persons in each country from high to low.
3. **Calculated** the average rating for persons in each country where the average is greater than 3.0.
4. **Identified** countries with the same rating as USA using subqueries.
5. **Selected** countries whose population is greater than the average population of all countries.
6. **Created** a database named `Product`.
7. **Created** a table `Customer` with fields: `Customer_Id` (Primary Key), `First_name`, `Last_name`, `Email`, `Phone_no`, `Address`, `City`, `State`, `Zip_code`, `Country`.
8. **Created** a view `customer_info` showing full name and email address of customers.
9. **Performed** `SELECT` operation on `customer_info`.
10. **Created** a view `US_Customers` to display customers from the US.
11. **Created** a view `Customer_details` with full name, email, phone number, and state.
12. **Updated** phone numbers of customers in California via `Customer_details`.
13. **Counted** number of customers in each state and filtered those with more than 5 customers.
14. **Retrieved** number of customers in each state using `Customer_details` view.
15. **Displayed** all columns from `Customer_details` sorted by state in ascending order.

---

## Assignment 9 – Stored Procedures

### Report on creating and using stored procedures

#### Steps Done:

1. **Created** a stored procedure to insert new records into `Worker` table using IN parameters for all fields, and **invoked** it.
2. **Created** a procedure with an IN parameter (`WORKER_ID`) and an OUT parameter (`SALARY`) to return worker’s salary, and **called** it.
3. **Created** a procedure to update `DEPARTMENT` based on `WORKER_ID`, and **called** it.
4. **Created** a procedure to return count of workers in a given department using OUT parameter `p_workerCount`, and **called** it.
5. **Created** a procedure to return average salary of workers in a given department using OUT parameter `p_avgSalary`, and **called** it.

---

## Assignment 10 – Triggers

### Report on creating triggers for table activity tracking

#### Steps Done:

1. **Created** a table `teachers` with fields: `id`, `name`, `subject`, `experience`, `salary` and **inserted** 8 rows.
2. **Created** a `BEFORE INSERT` trigger named `before_insert_teacher` to raise an error if salary is less than zero.
3. **Created** an `AFTER INSERT` trigger named `after_insert_teacher` to log insert actions into `teacher_log` table.
4. **Created** a `BEFORE DELETE` trigger to prevent deletion of rows with experience greater than 10 years.
5. **Created** an `AFTER DELETE` trigger to insert deleted teacher’s log data into `teacher_log`.

