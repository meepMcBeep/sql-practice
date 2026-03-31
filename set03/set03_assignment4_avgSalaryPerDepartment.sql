-- Set 3 Assignment 4
-- Return average employee salary grouped by department

SELECT 
	d.department_name,
    AVG(e.salary) AS average_salary
FROM employees AS e
JOIN employee_departments AS ed
	ON ed.employee_id = e.id
JOIN departments AS d
	ON ed.department_id = d.id
GROUP BY d.department_name;