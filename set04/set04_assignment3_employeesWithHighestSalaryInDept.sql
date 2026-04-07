-- Set 4 Assignment 3
-- Select emplopyees with the highest salary in their department

WITH department_max_salary AS (
    SELECT
        d.id AS department_id,
        d.department_name,
        MAX(e.salary) AS max_salary
    FROM departments AS d
    JOIN employee_departments AS ed
        ON d.id = ed.department_id
    JOIN employees AS e
        ON e.id = ed.employee_id
    GROUP BY d.id, d.department_name
)
SELECT
    e.name,
    e.salary,
    department_max_salary.department_name
FROM employees AS e
JOIN employee_departments AS ed
    ON e.id = ed.employee_id
JOIN department_max_salary
    ON ed.department_id = department_max_salary.department_id
WHERE e.salary = department_max_salary.max_salary;