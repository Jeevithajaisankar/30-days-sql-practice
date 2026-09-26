-- Day 17: Correlated Subqueries

-- 1. Find employees earning more than their departments average
SELECT name, salary, department
FROM employees e
WHERE salary > (
  SELECT AVG(salary) FROM employees WHERE department = e.department
);

-- 2. Correlated subquery with EXISTS 
SELECT name
FROM employees e
WHERE EXISTS (
  SELECT 1 FROM projects p WHERE p.employees_id = e.id
);

-- 3. Correlated subquery with NOT EXISTS 
SELECT name
FROM employees p
WHERE NOT EXISTS (
  SELECT 1 FROM projects p WHERE p.employee_id = e.id
);
