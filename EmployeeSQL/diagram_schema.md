Departments
-
dept_no PK VARCHAR
dept_name VARCHAR

Titles
-
title_id PK VARCHAR
title VARCHAR

Employees
-
emp_no PK INT
emp_title_ID VARCHAR FK >- Titles.title_id
birth_date date
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date date


Dept_emp
-
emp_no PK INT FK >- Employees.emp_no 
dept_no PK VARCHAR FK >- Departments.dept_no

Dept_manager
-
dept_no PK VARCHAR FK >- Departments.dept_no
emp_no PK INT FK >- Employees.emp_no

Salaries
-
emp_no PK INT FK >- Employees.emp_no
salary DEC