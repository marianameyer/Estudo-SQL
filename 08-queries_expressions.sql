-- Queries SQL com expressões

-- Expressões e Alias

USE DATABASE company_v2;

-- Recolhendo o valor do INSS

SELECT Fname, Lname, Salary, Salary*0.11 FROM employee;

SELECT Fname, Lname, Salary, Salary*0.11 AS INSS FROM employee;

SELECT Fname, Lname, Salary, ROUND(Salary*0.11,2) FROM employee;

-- Definir um aumento de salário para os gerentes que trabalham no projeto associado ao ProdutoX

SELECT * 
    FROM employee e, works_on AS w, project AS p
    WHERE (e.Ssn = w.Essn AND w.Pno = p.Pnumber);

SELECT *
    FROM employee e, works_on AS w, project AS p
    WHERE (e.Ssn = w.Essn AND w.Pno = p.Pnumber AND p.Pname = 'ProductX);

SELECT CONCAT(Fname, ' ', Lname) AS Complete_name, Salary, ROUND(Salary*1.1, 2) AS Increased_salary
    FROM employee e, works_on AS w, project AS p
    WHERE (e.Ssn = w.Essn AND w.Pno = p.Pnumber);

-- Definindo alias para legibilidade da consulta

SELECT e.Fname, e.Lname, e.Address FROM employee e, department d
    WHERE d.Dname = 'Research' AND d.Dnumber = e.Dno;