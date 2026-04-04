-- Set 4 Assignment 2
-- Select all employees from departments who average department salary is greater than the global average salary

WITH global_avg AS (
    SELECT
        AVG(e.salary) AS global_avg_salary
    FROM employees AS e
),
department_avg AS (
    SELECT
        d.id AS department_id,
        d.department_name,
        AVG(e.salary) AS department_avg_salary
    FROM employees AS e
    JOIN employee_departments AS ed
        ON e.id = ed.employee_id
    JOIN departments AS d
        ON ed.department_id = d.id
    GROUP BY d.id, d.department_name
)
SELECT
    e.name,
    e.salary,
    department_avg.department_name
FROM employees AS e
JOIN employee_departments AS ed
    ON e.id = ed.employee_id
JOIN department_avg
    ON ed.department_id = department_avg.department_id
CROSS JOIN global_avg
WHERE department_avg.department_avg_salary > global_avg.global_avg_salary;


