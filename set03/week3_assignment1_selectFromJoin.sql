"Return:

employee name

department name

From Tables

employees

employee_departments

departments

Requirements

Combine data across the tables so that each employee is matched to their department

Only return employees who have a department assigned

Do not use SELECT *

Use clean formatting and explicit columns"

SELECT 
	employees.name, 
	departments.department_name
FROM employees
JOIN employee_departments 
	ON employees.id = employee_departments.employee_id
JOIN departments 
	ON employee_departments.department_id = departments.id;