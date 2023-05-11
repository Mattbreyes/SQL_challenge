-- 3 List the manager of each department along with their department number, department name, employee number, last name, and first name

SELECT dm.dept_no,
	   d.dept_name,
	   dm.emp_no,
	   e.last_name,
	   e.first_name
FROM dept_manager dm
INNER JOIN departments d
ON dm.dept_no = d.dept_no
INNER JOIN employees e
ON dm.emp_no = e.emp_no;