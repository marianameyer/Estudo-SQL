-- Usando SELECT para entender o funcionamento do SQL

USE DATABASE company_v2;

SELECT * FROM employee;

-- Obter gerente e departamento
SELECT Ssn, Fname, Dname FROM employee e, department d WHRE (e.Ssn = d.Mgr_ssn);

-- Relação de funcionário e dependentes
SELECT Fname, Dependent_name, Relationship FROM employee, dependent WHERE Essn = Ssn;

-- 
SELECT Bdate, Address FROM employee WHERE Fname = 'John' and Minit = 'B' and Lname = 'Smith';

-- Recuperando departamento específico
SELECT * FROM department WHERE Dname = 'Research';

-- Recuperando funcionários que trabalham em certo departamento
SELECT Fname, Lname, Address FROM employee, department WHERE Dname = 'Research' and Dnumber = Dno;

-- Testando outras queries
SELECT * FROM projects;

SELECT * FROM projects, works_on WHERE Pnumber = Pno;

SELECT Pname, Essn, Hours FROM projects, works_on WHERE Pnumber = Pno;

SELECT Pname, Essn, Hours FROM projects, works_on WHERE Pnumber = Pno and Essn = Ssn;