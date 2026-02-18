CREATE DATABASE abc_company;
USE abc_company;

CREATE TABLE ainfo(
   emp_id INT PRIMARY KEY,
   name VARCHAR(50),
   email VARCHAR(50) NOT NULL,
   city VARCHAR(50),
   dept VARCHAR(50)
);

INSERT INTO ainfo VALUES
(1, 'Amit', 'amit.sharma@gmail.com', 'Jaipur', 'IT'),
(2, 'Sneha', 'sneha_k@yahoo.com', 'Indore', 'HR'),
(3, 'Rahul', 'rahul.verma@gmail.com', 'Bhopal', 'Finance'),
(4, 'Anita', 'anita99@gmail.com', 'Nagpur', 'IT'),
(5, 'Suman', 'suman@outlook.com', 'Kanpur', 'Sales'),
(6, 'Rohan', 'rohan_singh@yahoo.com', 'Delhi', 'IT'),
(7, 'Kiran', 'kiran@gmail.com', 'Udaipur', 'HR'),
(8, 'Arjun', 'arjun.mehta@gmail.com', 'Jodhpur', 'Finance'),
(9, 'Neha', 'neha@company.in', 'Raipur', 'IT'),
(10, 'Aman', 'aman@startup.in', 'Manipal', 'IT'),
(11, 'sonal', 'sonal@gmail.com', 'Bangalore', 'Sales'),
(12, 'Varun', 'varun@yahoo.com', 'Chandigarh', 'HR'),
(13, 'Asha', 'asha.patel@gmail.com', 'Ahmedabad', 'Finance'),
(14, 'Nitin', 'nitin@company.com', 'Nagpur', 'IT'),
(15, 'Alka', 'alka@domain.in', 'Ujjain', 'Sales');

SELECT * FROM ainfo;
SELECT * FROM ainfo WHERE LENGTH(name)=4;
SELECT * FROM ainfo WHERE name LIKE 'S%' AND LENGTH(name)=5;
SELECT * FROM ainfo WHERE name LIKE '_a%';
SELECT * FROM ainfo WHERE email LIKE '_@%';
SELECT * FROM ainfo WHERE name LIKE '__a%';