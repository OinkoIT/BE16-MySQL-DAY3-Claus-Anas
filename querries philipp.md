### 1. Report:

**How many rows do we have in each table in the employees database?**

    SELECT(
        SELECT COUNT(*)
      FROM   employees
      ) AS Total_Employees,
      (SELECT COUNT(*)
      FROM   departments
      ) AS No_Of_Departments,
      (SELECT COUNT(*)
      FROM   dept_emp
      ) AS dept_emp,
      (SELECT COUNT(*)
      FROM   dept_manager
      ) AS Total_Managers,
      (SELECT COUNT(*)
      FROM   salaries
      ) AS No_Of_Salaries,
      (SELECT COUNT(*)
      FROM   titles
      ) AS No_Of_Titles
    FROM dual

    Total_Employees
    No_Of_Departments
    dept_emp
    Total_Managers
    No_Of_Salaries
    No_Of_Titles
    300024
    9
    331603
    24
    2844047
    443308

### 2. Report:

**How many employees with the first name "Mark" do we have in our company?**

    SELECT COUNT(*) FROM employees WHERE employees.first_name = 'Mark';

Answer: 230


### 3. Report:

**How many employees with the first name "Eric" and the last name beginning with "A" do we have in our company?**

    SELECT COUNT(*) FROM employees WHERE employees.first_name = 'Eric' AND employees.last_name LIKE 'A%';


Answer: 13


### 4. Report:

**How many employees do we have that are working for us since 1985 and who are they?**

    SELECT COUNT(*) FROM employees WHERE YEAR(hire_date) >= 1985;

Answer: 300024

    SELECT * FROM employees WHERE YEAR(hire_date) >= 1985;


### 5. Report:

**How many employees got hired from 1990 until 1997 and who are they?**

    SELECT COUNT(*) FROM employees WHERE YEAR(hire_date) >= 1990 AND YEAR(hire_date) <= 1997;

Answer: 129545

    SELECT * FROM employees WHERE YEAR(hire_date) >= 1990 AND YEAR(hire_date) <= 1997;

6. Report:

**How many employees have salaries higher than EUR 70 000,00 and who are they?**

    SELECT COUNT(*) FROM employees WHERE employees.emp_no IN (
	    SELECT emp_no FROM salaries WHERE salaries.salary > 70000
    )

Answer: 135631

### 7. Report:

**How many employees do we have in the Research Department, who are working for us since 1992 and who are they?**

> TIP: You can use the CURRENT_DATE() FUNCTION to access today's date

    SELECT COUNT(*) FROM `employees` WHERE emp_no IN (
    SELECT emp_no FROM dept_emp WHERE dept_no = ( SELECT dept_no from departments WHERE dept_name = 'Research')
    )
    AND YEAR(hire_date) >= 1992;

Answer: 6145

### 8. Report:

**How many employees do we have in the Finance Department, who are working for us since 1985 until now and who have salaries higher than EUR 75 000,00 - who are they**

    SELECT COUNT(*) FROM `employees` WHERE emp_no IN (
    SELECT emp_no FROM dept_emp WHERE dept_no = ( SELECT dept_no from departments WHERE dept_name = 'Finance')
    )
    AND YEAR(hire_date) >= 1985 AND emp_no IN (
      SELECT emp_no FROM salaries WHERE salary > 75000    
    )

Answer: 8948

9. Report:

**We need a table with employees, who are working for us at this moment: first and last name, date of birth, gender, hire_date, title and salary.**




10. Report:

 We need a table with managers, who are working for us at this moment: first and last name, date of birth, gender, hire_date, title, department name and salary.


Bonus query:

 Create a query that will join all tables and show all data from all tables.


Next step:

 Now you should create at least 5 queries on your own, try to use data from more than 2 tables.