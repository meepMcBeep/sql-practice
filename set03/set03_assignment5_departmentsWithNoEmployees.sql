-- Set 03 Assignment 5
-- Select all departments which have no employees

SELECT
    d.department_name
FROM departments AS d
LEFT JOIN employee_departments AS ed
    ON d.id = ed.department_id
WHERE ed.employee_id IS NULL;