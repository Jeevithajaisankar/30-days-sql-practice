-- Day 8: Aggregation Revision (combining Days 4-7)

-- 1. GROUP BY + HAVING + ORDER BY together
SELECT department, COUNT(*), AVG(salary) FROM employees GROUP BY department HAVING COUNT(*) > 2 ORDER BY AVG(salary) DESC;

-- 2. WHERE + GROUP BY + multiple aggregates
SELECT department, COUNT(*), MAX(salary), MIN(marks) FROM employees WHERE salary > 30000 GROUP BY department;

-- 3. HAVING with multiple conditions
SELECT department, AVG(marks) FROM employees GROUP BY department HAVING AVG(salary) > 30000 AND COUNT(*) >= 2;

-- 4. Full combination: WHERE + GROUP BY + HAVING + ORDER BY + LIMIT
SELECT department, COUNT(*) AS total FROM employees WHERE marks IS NOT NULL GROUP BY department HAVING COUNT(*) > 1 ORDER BY total DESC LIMIT 3;

-- 5. Revision: simple aggregates (Day 4 recall)
SELECT COUNT(*), SUM(salary), AVG(salary) FROM employees;

-- 6. Revision: GROUP BY only (Day 6 recall)
SELECT department, COUNT(*) FROM employees GROUP BY department;
