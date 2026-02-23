CREATE DATABASE k_company;
USE k_company;

CREATE TABLE IINFO(
 emp_id INT PRIMARY KEY,
 name VARCHAR(50),
 email VARCHAR(50),
 city VARCHAR(50),
 dept VARCHAR(50),
 salary FLOAT
);

INSERT INTO IINFO VALUES
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

SELECT dept, SUM(salary) AS Total_salary
FROM IINFO
GROUP BY dept
HAVING SUM(salary)>150000;

SELECT city, AVG(salary) AS average_salary
FROM IINFO 
GROUP BY city
HAVING AVG(salary)>70000;

SELECT dept, COUNT(emp_id) AS employees
FROM IINFO
GROUP BY dept 
HAVING COUNT(emp_id)<3;

SELECT dept, SUM(salary) AS total_salary
FROM IINFO
GROUP BY dept
ORDER BY SUM(salary) desc;

SELECT dept, MAX(salary)-MIN(salary) AS diff_salary
FROM IINFO
GROUP BY dept;