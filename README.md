# BE16-MySQL-DAY3-Claus-Anas

 1. Report:

  How many rows do we have in each table in the employees database?

 SELECT COUNT(*) FROM `employees` WHERE 1;
 ...


2. Report:

  How many employees with the first name "Mark" do we have in our company?

SELECT COUNT(*) FROM `employees` WHERE first_name = "mark";


3. Report:

  How many employees with the first name "Eric" and the last name beginning with "A" do we have in our company?

SELECT COUNT(*) FROM `employees` WHERE first_name = "eric" AND last_name LIKE "a%";

> 13

4. Report:

  How many employees do we have that are working for us since 1985 and who are they?

SELECT employees.first_name, employees.last_name FROM `employees` WHERE employees.hire_date <= "1985-12-31";

> fName & lName ...

SELECT COUNT(*) FROM `employees` WHERE employees.hire_date <= "1985-12-31";

> 35316


5. Report:

  How many employees got hired from 1990 until 1997 and who are they?

SELECT COUNT(*) FROM `employees` WHERE employees.hire_date BETWEEN "1990-01-11" AND "1997-12-31";

> 128833

6. Report:

  How many employees have salaries higher than EUR 70 000,00 and who are they? 

SELECT DISTINCT COUNT(*) FROM `employees` WHERE employees.emp_no IN ( SELECT salaries.emp_no FROM salaries WHERE salaries.salary >70000 );

> 135631

SELECT DISTINCT employees.first_name, employees.last_name 
FROM `employees` 
WHERE employees.emp_no IN 
( 
SELECT salaries.emp_no 
FROM salaries 
WHERE salaries.salary >70000 );

> fName & lName

7. Report:

  How many employees do we have in the Research Department, who are working for us since 1992 and who are they?

  TIP: You can use the CURRENT_DATE() FUNCTION to access today's date

SELECT COUNT(*) 
FROM `employees` 
WHERE employees.emp_no IN (
SELECT dept_emp.emp_no
  FROM dept_emp
  WHERE dept_emp.from_date BETWEEN "1992-01-01" AND CURRENT_DATE
);

> 171704

SELECT employees.first_name, employees.last_name 
FROM `employees` 
WHERE employees.emp_no IN (
SELECT dept_emp.emp_no
  FROM dept_emp
  WHERE dept_emp.to_date > CURRENT_DATE
  AND dept_emp.dept_no = "d008"
) AND employees.hire_date BETWEEN "1992-01-01" AND CURRENT_DATE;

> fName & lName & 4520


8. Report:

  How many employees do we have in the Finance Department, who are working for us since 1985 until now and who have salaries higher than EUR 75 000,00 - who are they?

SELECT DISTINCT employees.first_name, employees.last_name
FROM `employees` 
INNER JOIN `dept_emp` ON dept_emp.emp_no = employees.emp_no
WHERE employees.emp_no IN (
	SELECT salaries.emp_no
    FROM salaries
    WHERE salaries.salary > 75000
) AND dept_emp.dept_no = "d002";

> 8927



9. Report:

We need a table with employees, who are working for us at this moment: first and last name, date of birth, gender, hire_date, title and salary.



10. Report:

We need a table with managers, who are working for us at this moment: first and last name, date of birth, gender, hire_date, title, department name and salary.



Bonus query:

Create a query that will join all tables and show all data from all tables.



Next step:

Now you should create at least 5 queries on your own, try to use data from more than 2 tables.

