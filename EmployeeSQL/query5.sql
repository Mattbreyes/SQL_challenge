-- 5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

SELECT first_name,
	last_name,
	sex
FROM employees
WHERE last_name LIKE 'B%%'
AND first_name = 'Hercules';