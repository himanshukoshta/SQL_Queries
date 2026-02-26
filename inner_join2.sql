CREATE DATABASE q_company;
USE q_company;

CREATE TABLE OINFO(
  emp_id INT PRIMARY KEY,
  name VARCHAR(50),
  dept_id INT,
  city VARCHAR(50)
);

CREATE TABLE EINFO(
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50)
);

INSERT INTO OINFO VALUES
(1,"RAVAN",101,"BHOPAL"),
(2,"RAN",102,"JABALPUR"),
(3,"SITA",103,"INDORE"),
(4,"BHARAT",104,"GWALIOR"),
(5,"LAXMAN",105,"SAGAR"),
(6,"SHATRUGAN",106,"GUNA"),
(7,"YUVRAJ",107,"DEORI");

INSERT INTO EINFO VALUES
(101,"IT"),
(102,"FINANCE"),
(103,"HR"),
(104,"IT"),
(105,"FINANCE"),
(106,"IT"),
(107,"HR");

SELECT * FROM OINFO
INNER JOIN EINFO 
ON OINFO.dept_id=EINFO.dept_id;

SELECT e.name, d.dept_name
FROM OINFO AS e
INNER JOIN EINFO AS d
ON e.dept_id=d.dept_id
WHERE d.dept_name="IT";

SELECT e.name,d.dept_name
FROM  OINFO AS e
INNER JOIN EINFO AS d
ON e.dept_id=d.dept_id
ORDER BY e.name ASC;

SELECT e.emp_id,d.dept_id 
FROM OINFO AS e 
INNER JOIN EINFO AS d
ON e.dept_id=d.dept_id
WHERE d.dept_id>105;