-- Set 3 Assignment 3
-- Return department name and number of employees in the department

SELECT 
    d.department_name,
	COUNT(*) AS employee_count
FROM employees AS e
JOIN employee_departments AS ed
	ON ed.employee_id = e.id
JOIN departments AS d
	ON ed.department_id = d.id
GROUP BY d.department_name;