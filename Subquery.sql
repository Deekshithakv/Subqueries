
-- Create sample tables
CREATE TABLE departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT,
    location TEXT
);

CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    emp_name TEXT,
    dept_id INTEGER,
    salary REAL,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Insert sample data
INSERT INTO departments (dept_id, dept_name, location) VALUES
(10, 'HR', 'New York'),
(20, 'IT', 'Chicago'),
(30, 'Finance', 'Boston');

INSERT INTO employees (emp_id, emp_name, dept_id, salary) VALUES
(1, 'Alice', 10, 70000),
(2, 'Bob', 10, 50000),
(3, 'Carol', 20, 60000),
(4, 'David', 30, 80000);

--  Subquery in SELECT (Scalar Subquery)

SELECT 
    emp_name,
    salary,
    (SELECT AVG(salary) FROM employees) AS avg_salary_all
FROM  employees;

-- Subquery in Where using in 
SELECT emp_name, dept_id 
FROM employees
WHERE dept_id IN (
    SELECT dept_id 
    FROM departments 
    WHERE location = 'New York'
);


--  Correlated Subquery in WHERE

SELECT emp_name, salary, dept_id
FROM employees e1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees e2
    WHERE e2.dept_id = e1.dept_id
);


--  Subquery in FROM

SELECT dept_id, avg_salary
FROM (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY dept_id
) AS dept_avg
WHERE avg_salary > 55000;


--  Using EXISTS

SELECT dept_name
FROM departments d
WHERE EXISTS (
    SELECT 1 
    FROM employees e
    WHERE e.dept_id = d.dept_id
);

-- Subquery using =
SELECT emp_name, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
)
