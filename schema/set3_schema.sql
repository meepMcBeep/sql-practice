CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employee_departments (
    employee_id INT,
    department_id INT
);