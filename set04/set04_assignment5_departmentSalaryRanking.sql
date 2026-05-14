WITH employees_info AS (
    SELECT 
        e.name,
        e.salary,
        d.department_name AS department
    FROM employees AS e
    JOIN employee_departments AS ed 
        ON e.id = ed.employee_id
    JOIN departments AS d 
        ON ed.department_id = d.id
),
ranked_salaries AS (
    SELECT 
        name,
        salary,
        department,
        RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
    FROM employees_info
)
SELECT
    name,
    salary,
    department,
    salary_rank
FROM ranked_salaries
ORDER BY department, salary_rank;