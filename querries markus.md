1:
SELECT(
    SELECT COUNT(*)
  FROM   employees
  ) AS total_employees,
  (SELECT COUNT(*)
  FROM   departments
  ) AS no_of_departments,
  (SELECT COUNT(*)
  FROM   dept_emp
  ) AS dept_emp,
  (SELECT COUNT(*)
  FROM   dept_manager
  ) AS total_managers,
  (SELECT COUNT(*)
  FROM   salaries
  ) AS no_of_salaries,
  (SELECT COUNT(*)
  FROM   titles
  ) AS no_of_titles
FROM dual

2:
select count(*) from employees WHERE first_name = "Mark";

3:
SELECT( SELECT COUNT(*) FROM employees where first_name = "Eric" AND last_name REGEXP '^[A].*$') as Eric_A;

4:
SELECT * FROM `employees` WHERE YEAR(hire_date) = 1985

5:
SELECT * FROM `employees` WHERE YEAR(hire_date) >= 1990 AND YEAR(hire_date) <= 1997;

6:
SELECT( SELECT COUNT(*) FROM employees WHERE employees.emp_no IN ( SELECT emp_no FROM salaries WHERE salaries.salary > 70000 )) AS emp_over_70000;

7:


8:


9:


10:


Bonus: