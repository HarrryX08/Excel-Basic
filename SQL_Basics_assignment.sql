CREATE DATABASE company_db

-- create new data base and table from employees
create table company_db (   
employee_id int Primary key,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
salary int,
hire_date date 
);

select * from company_db

-- Q2  insert data into employee table.
insert into company_db ( employee_id,first_name,last_name , department, salary, hire_date)
values
(101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
(102, 'Riya', 'Kapoor', 'sales', 75000, '2019-03-22'),
(103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
(104, 'Neha', 'Varma', 'IT', 85000, '2021-09-01'),
(105, 'Arjun', 'Singh', 'Finance', 60000, '2022-01-15');

Select * from company_db

-- Q3 Display All Employee Records Sorted by Salary (Lowest to Highest)
select*
 from company_db order by  salary asc

-- Q4 Show Employees Sorted by Department (A–Z) and Salary (High → Low)
select*
 from company_db order by  department asc , salary desc
 
 -- Q5 List All Employees in the IT Department, Ordered by Hire Date (Newest First)

SELECT *
FROM company_db
WHERE department = 'IT'
ORDER BY hire_date DESC

create DATABASE sales

-- Q6 Create and Populate a Sales Table

create table sales (
sales_id int,
customer_name varchar(50),
amount int,
sale_date date
);

Select * from sales 

insert into sales ( sales_id , customer_name, amount, sale_date)
values
(1, 'Aditi', 1500, '2024-08-01'),
(2, 'Rohan', 2200, '2024-08-03'),
(3, 'Aditi', 3500, '2024-09-05'),
(4, 'Meena', 2700, '2024-09-15'),
(5, 'Rohan', 4500, '2024-09-25');

select * from sales

-- Q7 Display All Sales Records Sorted by Amount (Highest → Lowest)
select *
from sales order by amount desc

-- Q8 Show All Sales Made by Customer “Aditi”
select *
from sales where customer_name= 'Aditi'

-- Q9  What is the Difference Between a Primary Key and a Foreign Key?
Primary Key 
-- 1 Uniquely identifies each record in a table
-- 2 Cannot contain null values
-- 3 Must be unique
-- 4 Only one primary key per table
-- 5 Ensure entity integrity
Foreign Key
-- 1 Link one table to another table
-- 2 can contain duplicate values
-- 3 can conatin null values
-- 4 Mutiple foreign key
-- 5 Ensure referential integrity

-- Q10  What Are Constraints in SQL and Why Are They Used?
--  constraints are rules applied to table columns to control type of data that can be stored in a database.
