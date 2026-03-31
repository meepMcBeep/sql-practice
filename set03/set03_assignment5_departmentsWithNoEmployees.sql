-- Set 03 Assignment 5
-- Select all departments which have no employees

SELECT
    d.department_name
FROM departments AS d
LEFT JOIN employee_departments AS ed
    ON d.id = ed.department_id
GROUP BY d.department_name
HAVING COUNT(ed.employee_id) = 0;