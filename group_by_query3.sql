CREATE DATABASE o_company;
USE o_company;

CREATE TABLE PINFO(
 emp_id INT PRIMARY KEY,
 name VARCHAR(50),
 email VARCHAR(50),
 city VARCHAR(50),
 dept VARCHAR(50),
 salary FLOAT
);

INSERT INTO PINFO VALUES
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

SELECT city, AVG(salary) AS average_salary 
FROM PINFO 
GROUP BY city
HAVING AVG(salary)>70000
ORDER BY AVG(salary) desc;

SELECT dept, MAX(salary)-MIN(salary) AS Salary_gap
FROM PINFO 
GROUP BY dept;

SELECT city,dept, SUM(salary) AS total_salary
FROM PINFO
WHERE city = 'Mumbai' AND dept = 'IT'
GROUP BY city,dept ;

SELECT city, dept, COUNT(emp_id) AS emp
FROM PINFO 
GROUP BY city, dept 
HAVING COUNT(emp_id)=1;