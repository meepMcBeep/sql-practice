CREATE TABLE employees(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  department VARCHAR(50),
  salary DECIMAL(10,2),
  years_at_company INT,
  country VARCHAR(50)
);
INSERT INTO employees (
  id, 
  name, 
  department, 
  salary, 
  years_at_company, 
  country)
VALUES 
  (123, 'Dave', 'Security', 3.50, 1, 'USA'),
  (124, 'Lisa', 'Sales', 5, 1, 'Canada'),
  (125, 'Sally', 'Engineering', 5.25, 1, 'Canada'),
  (126, 'Larry', 'Engineering', 4.75, 1, 'USA'),
  (127, 'Bob', 'Security', 4.25, 2, 'USA');