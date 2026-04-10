-- Set 4 Assignment 4
-- Select all employees with salary above the company median

WITH ranked_salaries AS (
  SELECT
      salary,
      ROW_NUMBER() OVER (ORDER BY salary) AS salary_rank,
      COUNT(salary) OVER () AS row_count
  FROM employees
),
median_salary AS (
  SELECT AVG(salary) AS median
  FROM ranked_salaries
  WHERE salary_rank IN (FLOOR((row_count+1)/2), CEIL((row_count+1)/2))
)
SELECT
	e.name,
    e.salary,
    d.department_name
FROM employees AS e
JOIN employee_departments AS ed
	ON e.id = ed.employee_id
JOIN departments AS d
	ON ed.department_id = d.id
CROSS JOIN median_salary
WHERE e.salary > median_salary.median