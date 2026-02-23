CREATE DATABASE acc_company;
USE acc_company;

CREATE TABLE HINFO(
  emp_id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50),
  city VARCHAR(50),
  dept VARCHAR(50),
  salary FLOAT
);
INSERT INTO HINFO VALUES
(101, 'Arjun Mehta', 'arjun.m@example.com', 'Mumbai', 'IT', 85000.00),
(102, 'Priya Sharma', 'priya.s@example.com', 'Delhi', 'HR', 60000.00),
(103, 'Rohan Das', 'rohan.d@example.com', 'Mumbai', 'Sales', 55000.00),
(104, 'Sanya Iyer', 'sanya.i@example.com', 'Bangalore', 'IT', 92000.00),
(105, 'Amit Patel', 'amit.p@example.com', 'Mumbai', 'IT', 78000.00),
(106, 'Anjali Nair', 'anjali.n@example.com', 'Bangalore', 'HR', 62000.00),
(107, 'Vikram Singh', 'vikram.s@example.com', 'Delhi', 'Sales', 58000.00),
(108, 'Sneha Rao', 'sneha.r@example.com', 'Bangalore', 'Marketing', 70000.00),
(109, 'Karan Verma', 'karan.v@example.com', 'Mumbai', 'Marketing', 72000.00),
(110, 'Neha Gupta', 'neha.g@example.com', 'Delhi', 'IT', 81000.00);

SELECT city, AVG(salary) AS avg_salary
FROM HINFO 
GROUP BY city
ORDER BY AVG(salary) desc
LIMIT 2;

SELECT dept, COUNT(emp_id) AS COUNT_OF_EMPLOYEE
FROM HINFO 
GROUP BY dept 
ORDER BY COUNT(emp_id) DESC
LIMIT 1;

SELECT name, salary
FROM HINFO 
ORDER BY salary desc
LIMIT 4 OFFSET 1;