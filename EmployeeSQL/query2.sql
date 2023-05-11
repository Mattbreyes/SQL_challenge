-- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT first_name,
	   last_name,
	   hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31';