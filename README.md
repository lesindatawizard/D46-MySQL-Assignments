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
