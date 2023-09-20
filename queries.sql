--query table
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM dept_managers;

--------------01.List the employee number, last name, first name, sex, and salary of each employee.------------

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY emp_no;

--------------02.List the first name, last name, and hire date for the employees who were hired in 1986.-----------

SELECT first_name AS "first name", last_name AS "last name", hire_date AS "hire date"
FROM employees
WHERE hire_date LIKE '%1986';

--------------03.List the manager of each department along with their
--              department number, department name, employee number, last name, and first name.--------------

SELECT m.dept_no AS "department number", d.dept_name AS "department name", m.emp_no AS "employee number",
		e.last_name AS "last name", e.first_name AS "first name"
FROM dept_managers m
	INNER JOIN departments d
		ON m.dept_no = d.dept_no
	INNER JOIN employees e
		ON m.emp_no = e.emp_no;

-------------04.List the department number for each employee along with that
--              employee’s employee number, last name, first name, and department name.----------

SELECT de.emp_no AS "employee number", de.dept_no AS "department number", 
	   e.last_name AS "last name", e.first_name AS "first name",
	   d.dept_name AS "department name"
FROM dept_emp de
	INNER JOIN employees e
		ON de.emp_no = e.emp_no
	INNER JOIN departments d
		ON de.dept_no = d.dept_no
ORDER BY "employee number";

------------05.List the first name, last name, and sex of each employee whose 
--               first name is Hercules and whose last name begins with the letter B.-------------

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-----------06.List each employee in the Sales department, including their employee number, last name, and first name.

SELECT de.emp_no AS "employee number", d.dept_name AS "department name",
		e.last_name AS "last name", e.first_name AS "first name"
FROM dept_emp de
	INNER JOIN departments d
		ON de.dept_no = d.dept_no
	INNER JOIN employees e
		ON de.emp_no = e.emp_no
WHERE "dept_name" = 'Sales'
ORDER BY "employee number";

---------------------question 06_(using subqueries)----------------------- 
SELECT emp_no AS "employee number",
		(SELECT departments.dept_name
		FROM departments
		WHERE dept_emp.dept_no = departments.dept_no) AS "department name",
		(SELECT employees.last_name 
		FROM employees
		WHERE dept_emp.emp_no = employees.emp_no) AS "last name",
		(SELECT employees.first_name
		FROM employees
		WHERE dept_emp.emp_no = employees.emp_no) AS "first name"
FROM dept_emp;

DROP VIEW sales_employees;

CREATE VIEW sales_employees AS
SELECT emp_no AS "employee number",
		(SELECT departments.dept_name
		FROM departments
		WHERE dept_emp.dept_no = departments.dept_no) AS "department name",
		(SELECT employees.last_name
		FROM employees
		WHERE dept_emp.emp_no = employees.emp_no) AS "last name",
		(SELECT employees.first_name
		FROM employees
		WHERE dept_emp.emp_no = employees.emp_no) AS "first name"
FROM dept_emp;

SELECT *
FROM sales_employees
WHERE "department name" = 'Sales'
ORDER BY "employee number";

--------------07.List each employee in the Sales and Development departments, 
--              including their employee number, last name, first name, and department name.-------------

SELECT emp_no As "employee number",
		(SELECT dept_name
		 FROM departments
		 WHERE dept_emp.dept_no = departments.dept_no) AS "department name",
		 (SELECT last_name
		 FROM employees
		 WHERE dept_emp.emp_no = employees.emp_no) AS "last name",
		 (SELECT first_name
		 FROM employees
		 WHERE dept_emp.emp_no = employees.emp_no) AS "first name"
FROM dept_emp;

DROP VIEW sales_and_development;

CREATE VIEW sales_and_development AS
SELECT emp_no As "employee number",
		(SELECT dept_name
		 FROM departments
		 WHERE dept_emp.dept_no = departments.dept_no) AS "department name",
		 (SELECT last_name
		 FROM employees
		 WHERE dept_emp.emp_no = employees.emp_no) AS "last name",
		 (SELECT first_name
		 FROM employees
		 WHERE dept_emp.emp_no = employees.emp_no) AS "first name"
FROM dept_emp;

SELECT *
FROM sales_and_development
WHERE "department name" IN ('Sales','Development')
ORDER BY "employee number";

--------------08.List the frequency counts, in descending order, of all the employee last names 
--          (that is, how many employees share each last name).---------------------------------------------

SELECT last_name AS "last name",COUNT(last_name) AS "frequency count"
FROM employees
GROUP BY last_name
ORDER BY "frequency count" DESC;