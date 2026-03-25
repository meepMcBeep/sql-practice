CREATE TABLE employees(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  department VARCHAR(50),
  salary DECIMAL(10,2),
  years_at_company INT,
  country VARCHAR(50)
);

CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employee_departments (
    employee_id INT,
    department_id INT
);

INSERT INTO employees (
    id,
    name,
    department,
    salary,
    years_at_company,
    country
)
VALUES
    (123, 'Dave',  'Security',    30000.50, 1, 'USA'),
    (124, 'Lisa',  'Sales',       50000.00, 1, 'Canada'),
    (125, 'Sally', 'Engineering', 500000.00, 1, 'Canada'),
    (126, 'Larry', 'Engineering', 47500.00, 1, 'USA'),
    (127, 'Bob',   'Security',    42500.00, 2, 'USA'),
    (128, 'Alice', 'Engineering', 90000.00, 3, 'USA'),
    (129, 'Frank', 'Sales',       72000.00, 4, 'USA'),
    (130, 'Nina',  'Engineering', 110000.00, 5, 'Germany'),
    (131, 'Mark',  'Security',    65000.00, 2, 'USA'),
    (132, 'Julia', 'Sales',       54000.00, 3, 'UK'),
    (133, 'Ethan', 'Engineering', 125000.00, 6, 'USA'),
    (134, 'Priya', 'Engineering', 118000.00, 4, 'India'),
    (135, 'Carlos','Security',    72000.00, 5, 'Mexico'),
    (136, 'Chen',  'Engineering', 130000.00, 7, 'China'),
    (137, 'Anna',  'Sales',       61000.00, 2, 'Germany'),
    (138, 'Tom',   'Security',    58000.00, 3, 'USA'),
    (139, 'Omar',  'Engineering', 99000.00, 2, 'UAE'),
    (140, 'Hannah','Sales',       52000.00, 1, 'USA');
    
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