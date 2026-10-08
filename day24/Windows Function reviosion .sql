-- Day 24: Window Functions Revision

-- 1. Ranking + aggregate window together (Days 20 and 22 recall)
SELECT name, department, salary,
RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank,
AVG(salary) OVER (PARTITION BY department) AS dept_avg
FROM students;

-- 2. LAG to find the gap between a student and the next-higher scorer (Day 21 recall)
SELECT students, marks,
LAG(marks) OVER (ORDER BY marks DESC) AS next_higher_score,
LAG(marks) OVER (ORDER BY marks DESC) - marks AS gap
FROM students;

