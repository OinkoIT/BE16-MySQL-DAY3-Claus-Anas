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

-- 5
SELECT first_name,last_name,hire_date FROM employees WHERE year(hire_date) >= 1990 AND year(hire_date) <= 1997;

-- 6
-- getting employees with higher then 70000 salary (note will get only the number without knowing the employees)
SELECT COUNT(DISTINCT emp_no) FROM salaries WHERE salary >= 70000;
-- How many employees have salaries higher than EUR 70 000,00 and who are they? 
SELECT DISTINCT employees.first_name FROM employees INNER JOIN salaries ON salaries.emp_no = employees.emp_no WHERE salaries.salary =70000;
