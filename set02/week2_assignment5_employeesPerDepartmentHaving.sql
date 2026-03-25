SELECT 
	department, 
	COUNT(*) as employees_in_department
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;