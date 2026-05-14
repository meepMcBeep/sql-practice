INSERT INTO employees (
    id,
    name,
    department,
    salary,
    years_at_company,
    country
)
VALUES
    (123, 'Dave', 'Security', 30000.50, 1, 'USA'),
    (124, 'Lisa', 'Sales', 50000.00, 1, 'Canada'),
    (125, 'Sally', 'Engineering', 500000.00, 1, 'Canada'),
    (126, 'Larry', 'Engineering', 47500.00, 1, 'USA'),
    (127, 'Bob', 'Security', 42500.00, 2, 'USA');

INSERT INTO departments (id, department_name) VALUES
    (1, 'Engineering'),
    (2, 'Sales'),
    (3, 'Security'),
    (4, 'Marketing');

INSERT INTO employee_departments (employee_id, department_id) VALUES
    (123, 3),
    (124, 2),
    (125, 1),
    (126, 1),
    (127, 3);