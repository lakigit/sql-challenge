--Drop tables if exists

DROP TABLE departments CASCADE; 
DROP TABLE dept_emp CASCADE;
DROP TABLE dept_managers CASCADE;
DROP TABLE employees CASCADE;
DROP TABLE salaries CASCADE;
DROP TABLE titles CASCADE;

--create table "departments"
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY(dept_no)
);
-- Import CSV "department" 

--create table "dept_emp"
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY(emp_no,dept_no)
);
-- Import CSV "dept_emp"

--create table "dept_managers"
CREATE TABLE dept_managers (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY(dept_no,emp_no)
);
-- Import CSV "dept_managers"

--create table "employees"
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date VARCHAR NOT NULL,
	PRIMARY KEY(emp_no)
);
-- Import CSV "employees"

--create table "salaries"
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY(emp_no)
);
-- Import CSV "salaries" 

--create table "titles"
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY(title_id)
);
-- Import CSV "titles" 

