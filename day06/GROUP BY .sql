-- Day 6: GROUP BY

-- 1. Basic GROUP BY - count per group
SELECT department, COUNT(*) FROM students GROUP BY department;

-- 2. GROUP BY with AVG
SELECT department, AVG(marks) FROM students GROUP BY department;

-- 3. GROUP BY with SUM
SELECT department, SUM(salary) FROM students GROUP BY department;

-- 4. GROUP BY with MAX and MIN
SELECT department, MAX(marks), MIN(marks) FROM students GROUP BY department;

-- 5. GROUP BY multiple columns
SELECT department, salary, COUNT(*) FROM students GROUP BY department, salary;

-- 6. GROUP BY + WHERE (filter before grouping)
SELECT department, AVG(marks) FROM students WHERE salary > 25000 GROUP BY department;

-- 7. GROUP BY + ORDER BY
SELECT department, SUM(salary) AS total_salary COUNT(*) FROM students GROUP BY department ORDER BY total_salary to DESC;

-- 8. Multiple aggregates per group
SELECT department, COUNT(*), AVG(marks), MAX(marks), MIN(marks), SUM(marks) FROM students GROUP BY department;
