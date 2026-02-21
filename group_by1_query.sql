CREATE DATABASE bg_company;
USE bg_company;

CREATE TABLE BINFO(
  emp_id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50),
  city VARCHAR(50),
  dept VARCHAR(50),
  salary FLOAT
);

INSERT INTO BINFO VALUES
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

SELECT * FROM BINFO;
SELECT dept, COUNT(emp_id) AS total_employees, AVG(salary) AS avg_salary
FROM BINFO
GROUP BY dept;
SELECT city, SUM(salary) AS Total_salary 
FROM BINFO 
GROUP BY city
ORDER BY SUM(salary) desc;
SELECT dept, MIN(salary) 
FROM BINFO 
GROUP BY dept 
HAVING MIN(salary)>60000;
SELECT dept, MAX(salary) AS MAX_SALARY,
 MIN(salary) AS MIN_SALARY, 
 AVG(salary) AS AVG_SALARY
 FROM BINFO 
 GROUP BY dept;
 SELECT city, COUNT(*) AS Total_employees,
 SUM(salary) AS Total_Salary
 FROM BINFO 
 GROUP BY city;
 SELECT city, dept, COUNT(emp_id) AS Employees_count
 FROM BINFO 
 GROUP BY city, dept
 ORDER BY city, COUNT(emp_id);