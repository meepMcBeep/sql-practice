SELECT 
	department, COUNT(*) AS employees_per_department
FROM employees
GROUP BY department;