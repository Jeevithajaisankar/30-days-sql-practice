-- Day 22: PARTITION BY with aggregates

-- 1. BASIC QUERY
SELECT name, department, salary,
SUM(salary) OVER (PARTITION BY department) AS total_salary
FROM Employees;
