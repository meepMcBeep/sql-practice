-- Set 3 - Assignment 2
-- Return employee names for employees in the Engineering department

SELECT e.name
FROM employees AS e
JOIN employee_departments AS ed
	ON e.id = ed.employee_id
JOIN departments AS d
	ON d.id = ed.department_id
WHERE d.department_name = 'Engineering';