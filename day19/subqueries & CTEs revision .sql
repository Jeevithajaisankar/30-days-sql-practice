-- Day 19: Subqueries & CTEs Revision

-- 1. Subquery version: students above their course average (Day 17 recall)
SELECT name, course, marks
FROM students s1
WHERE marks > (
  SELECT AVG(marks) FROM students s2 WHERE s2.course = s1.course
);

-- 2. Same problem rewritten as a CTE + JOIN (Day 18 recall)
WITH course_avg AS (
  SELECT course, AVG(marks) AS avg_marks
  FROM students
  GROUP BY course
)
SELECT s.name, s.course, s.marks
FROM students s
JOIN course_avg c ON s.course = c.course
WHERE s.marks > c.avg_marks;

