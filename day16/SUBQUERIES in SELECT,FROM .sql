-- Day 16: Subqueries in SELECT/FROM

-- 1. Subquery in SELECT 
SELECT name, salary, (SELECT AVG(salary) FROM employees) AS avg_salary
FROM students;

-- 2. Subquery in FROM - treat grouped results as a temporary table
SELECT*
FROM (
  SELECT department, AVG(salary) AS avg_marks
  FROM employees
  GROUP BY department
) AS dept_avg;

