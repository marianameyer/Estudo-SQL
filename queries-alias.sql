-- Realizando queries com alias

USE DATABASE company_v2;

SHOW TABLES;

-- Dnumber em department
DESC department;

DESC dept_locations;

SELECT * FROM department;

SELECT * FROM dept_locations;

-- Erro de ambiguidade:
SELECT * FROM department, dept_locations WHERE Dnumber = Dnumber;

-- Para retirar a ambiguidade, usa-se AS STATEMENT
SELECT Dname AS Department_name 
    FROM department AS d, dept_locations AS l 
    WHERE d.Dnumber = l.Dnumber;

SELECT Dname, l.Dlocation AS Department_name 
    FROM department AS d, dept_locations AS l 
    WHERE d.Dnumber = l.Dnumber;

-- Concatenação
SELECT * FROM employee;

SELECT CONCAT(Fname, ' ', Lname) FROM employee;

SELECT CONCAT(Fname, ' ', Lname) AS Employee FROM employee;
