CREATE DATABASE Employee_db1; 
USE Employee_db1; 
CREATE TABLE employee1 ( 
emp_id INT PRIMARY KEY, 
name VARCHAR(50), 
department_id VARCHAR(5),
Salary INT); 
INSERT INTO employee1 
VALUES 
(101, 'Abhishek', 'D01', 62000),
(102, 'Shubham', 'DO1', 58000),
(103, 'Priya', 'D02', 67000),
(104, 'Rohit', 'D02', 64000),
(105, 'Neha', 'D03', 72000),
(106, 'Aman', 'D03', 55000),
(107, 'Ravi', 'D04', 60000),
(108, 'Sneha', 'D04', 75000),
(109, 'Kiran', 'D05',70000),
(110, 'Tanuja', 'D05', 65000);
SELECT * from employee1; 
CREATE TABLE department (department_id VARCHAR(5) PRIMARY KEY, 
department_name VARCHAR(50),
location VARCHAR(50));
INSERT INTO department VALUES 
('D01', 'Sales', 'Mumbai'),
('D02', 'Marketing', 'Delhi'),
('D03', 'Finance', 'Pune'),
('D04', 'HR', 'Bengaluru'),
('D05', 'IT', 'Hyderabad');
Select * from department;
CREATE TABLE sales ( 
sales_id INT PRIMARY KEY,
Emp_id INT, 
sale_amount INT,
sale_date DATE, 
FOREIGN KEY (emp_id) REFERENCES employee(emp_id));
INSERT INTO sales VALUES 
(201, 101, 45000, '2025-01-05'),
(202, 102, 7800, '2025-01-10'),
(203, 103, 6700, '2025-01-14'),
(204, 104, 12000, '2025-01-20'),
(205, 105, 9800, '2025-02-02'),
(206, 106, 10500, '2025-02-05'),
(207, 107, 3200, '2025-02-09'),
(208, 108, 5100, '2025-02-15'),
(209, 109, 3900, '2025-02-20'),
(210, 110, 7200, '2025-03-01');
Select * from sales;
##Question 1. Retrieve the names of employees who earn more than the average salary of all employees. 
Select name 
FROM EMPLOYEE1
WHERE salary > (SELECT AVG(salary) FROM employees1);
