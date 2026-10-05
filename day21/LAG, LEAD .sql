-- Day 21: LAG, LEAD

-- 1. LAG 
SELECT employee, salary,
  LAG(salary) OVER (ORDER BY salary) AS previous_salary
FROM Employees;

-- 2. LEAD 
SELECT employee, salary,
  LEAD(salary) OVER (ORDER BY salary) AS next_salary
FROM Employees;

