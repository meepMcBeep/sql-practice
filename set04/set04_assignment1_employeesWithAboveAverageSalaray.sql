-- Set 4 Assignment 1
-- Select employees with salary greaer than their department average

WITH employee_info AS (
    SELECT
        e.name,
        e.salary,
        d.id AS department_id,
        d.department_name
    FROM employees AS e
    JOIN employee_departments AS ed
        ON e.id = ed.employee_id
    JOIN departments AS d
        ON ed.department_id = d.id
),
department_avg AS (
    SELECT
        department_id,
        AVG(salary) AS average_salary
    FROM employee_info
    GROUP BY department_id
)
SELECT
    employee_info.name AS employee_name,
    employee_info.salary AS employee_salary,
    employee_info.department_name
FROM employee_info
JOIN department_avg
    ON employee_info.department_id = department_avg.department_id
WHERE employee_info.salary > department_avg.average_salary;
	