-- 1
SELECT SUM(TABLE_ROWS) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'employees';
-- 2
SELECT COUNT(*) FROM employees WHERE first_name = 'Mark';
-- 3
SELECT COUNT(*) FROM employees WHERE first_name = 'Eric' AND last_name LIKE 'A%';
-- 4
-- getting only the hire_date 1985 from the employee  
SELECT COUNT(*) FROM employees WHERE year(hire_date) = 1985;
-- getting first and last name with the hire date from the employee
SELECT first_name,last_name,hire_date FROM employees WHERE year(hire_date) >= 1985;

