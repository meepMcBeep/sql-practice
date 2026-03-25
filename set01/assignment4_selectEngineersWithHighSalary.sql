SELECT 
    name, 
    salary,
    years_at_company
FROM employees
WHERE department = 'Engineering'
	AND salary > 100000;