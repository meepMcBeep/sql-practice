-- Set 4 Assignment 1
-- Select employees with salary greaer than their department average

SELECT
	ei.name AS employee_name,
    ei.salary AS employee_salary,
    ei.department_name
FROM
(
  SELECT 
      e.name,
      e.salary,
      d.department_name
  FROM employees AS e
  JOIN employee_departments AS ed
      ON e.id = ed.employee_id
  JOIN departments AS d
      ON ed.department_id = d.id
) AS ei
JOIN
(
  SELECT 
	d.department_name,
    AVG(e.salary) AS average_salary
  FROM employees AS e
  JOIN employee_departments AS ed
      ON ed.employee_id = e.id
  JOIN departments AS d
      ON ed.department_id = d.id
  GROUP BY d.department_name
) AS di
ON ei.department_name = di.department_name
WHERE ei.salary > di.average_salary
	