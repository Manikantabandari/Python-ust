CREATE DATABASE company_dbs;
USE company_dbs;

CREATE TABLE employees(
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salry DECIMAL(10,2),
hire_date DATE)
INSERT INTO employees VALUES (1, 'abhi','ITI', '10000.0', '2026-02-23');
INSERT INTO employees VALUES (2, 'Ram','SDE', '150000.0', '2026-02-24');
SELECT * FROM employees

CREATE TABLE department(
department_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salry DECIMAL(10,2),
hire_date DATE)
SELECT * FROM department
INSERT INTO department VALUES (1, 'Rahul','IT', '20000.0', '2026-02-26');
INSERT INTO department VALUES (2, 'chandu','SD', '30000.0', '2026-02-27');


SELECT CURRENT_TIMESTAMP;
SELECT UPPER(name) FROM employees;
SELECT LEN(name) FROM employees;
SELECT COUNT(*) FROM employees;
SELECT AVG(salry) FROM employees;
SELECT SUM(salry) FROM employees;

SELECT e.name,d.department
FROM employees e
INNER JOIN department d
ON e.department=d.department_id;

SELECT e.name,d.department
FROM employees e
LEFT JOIN department d
ON e.department=d.department_id;

SELECT department,COUNT(*)
FROM employees
GROUP BY department;

SELECT ROUND(AVG(salry),2)FROM employees;
SELECT MAX(salry),MIN(salry) FROM employees;

CREATE VIEW manikanta AS
SELECT name,salry
FROM employees
WHERE salry>10000;
SELECT * FROM department;
SELECT * FROM department WHERE name='chandu'
SELECT name
FROM department
WHERE department IN(
SELECT department_id FROM department WHERE salry=30000

SELECT d.name
FROM department d
LEFT JOIN employees e1
ON e1.emp_id=d.department_id
WHERE e1.emp_id IS NULL;
SELECT * FROM employees
SELECT * FROM department

SELECT emp_id, MAX(emp_id)
FROM employees
GROUP BY emp_id
HAVING MAX(emp_id) > 1;

CREATE VIEW VIEW_NAME AS 
SELECT emp_id, name, department, salry
FROM employees
WHERE salry >= 10000
SELECT * FROM VIEW_NAME

select name, salry from employees where salry>(select sum(salry)/count(*) from employees);
select department, SUM(salry) AS total_salry from employees group by department ORDER BY total_salry DESC

SELECT * FROM department

