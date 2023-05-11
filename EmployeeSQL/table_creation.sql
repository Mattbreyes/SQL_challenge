
-- drop tables
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;

-- tables

CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY NOT NULL,
    dept_name VARCHAR NOT NULL
);


CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY NOT NULL,
    title VARCHAR NOT NULL
);


CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);


CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR   NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE salaries (
    emp_no INT PRIMARY KEY NOT NULL,
    salary DEC NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-- import data in the same order as the corresponding tables got created. 
-- And, remember to account for the headers when doing the imports.

-- Departments
COPY departments (
	dept_no,
	dept_name
)
FROM 'C:\Users\Matthew\Desktop\Github\SQL_challenge\EmployeeSQL\data\departments.csv'
DELIMITER ','
CSV HEADER;

-- Titles
COPY titles (
	title_id,
	title
)
FROM 'C:\Users\Matthew\Desktop\Github\SQL_challenge\EmployeeSQL\data\titles.csv'
DELIMITER ','
CSV HEADER;

-- Employees
COPY employees (
	emp_no,
	emp_title_id,
	birth_date,
	first_name,
	last_name,
	sex,
	hire_date
)
FROM 'C:\Users\Matthew\Desktop\Github\SQL_challenge\EmployeeSQL\data\employees.csv'
DELIMITER ','
CSV HEADER;

-- Department employees
COPY dept_emp (
	emp_no,
	dept_no
)
FROM 'C:\Users\Matthew\Desktop\Github\SQL_challenge\EmployeeSQL\data\dept_emp.csv'
DELIMITER ','
CSV HEADER;

-- Department managers
COPY dept_manager (
	dept_no,
	emp_no
)
FROM 'C:\Users\Matthew\Desktop\Github\SQL_challenge\EmployeeSQL\data\dept_manager.csv'
DELIMITER ','
CSV HEADER;

-- Salaries
COPY salaries (
	emp_no,
	salary
)
FROM 'C:\Users\Matthew\Desktop\Github\SQL_challenge\EmployeeSQL\data\salaries.csv'
DELIMITER ','
CSV HEADER;

