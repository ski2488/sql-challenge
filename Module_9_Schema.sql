--Set up 'departments' table
CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

--Import and test 'departments' table
SELECT * FROM departments;



--Set up 'dept_emp' table (Composite PK)
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY(emp_no, dept_no)
);

--Import and test 'dept_emp' table
SELECT * FROM dept_emp;



--Set up 'dept_manager' table
CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT PRIMARY KEY,
	CONSTRAINT dept_manager_dept_no_fkey FOREIGN KEY(dept_no)
	REFERENCES departments(dept_no)
);

--Import and test 'dept_manager' table
SELECT * FROM dept_manager;



--Set up 'employees' table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	CONSTRAINT employees_emp_title_id_fkey FOREIGN KEY(emp_title_id)
	REFERENCES titles(title_id)
);

--Import and test 'employees' table
SELECT * FROM employees;



--Set up 'salaries' table
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL
);

--Import and test 'salaries' table
SELECT * FROM salaries;



--Set up 'titles' table
CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR NOT NULL
);

--Import and test 'titles' table
SELECT * FROM titles;
