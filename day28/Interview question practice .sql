-- Day 28: Interview Questions Practice (Round 2)

-- 1. Find the Nth highest marks (here N = 3) using DENSE_RANK
WITH ranked AS (
  SELECT marks, DENSE_RANK() OVER (ORDER BY marks DESC) AS rnk
  FROM students
)
SELECT DISTINCT marks FROM ranked WHERE rnk = 3;

-- 2. Students scoring above their own course average (correlated subquery)
SELECT name, course, marks
FROM students s1
WHERE marks > (SELECT AVG(marks) FROM students s2 WHERE s2.course = s1.course);

-- 3. Count of students per grade using CASE + GROUP BY
SELECT
CASE
  WHEN marks >= 75 THEN 'Distinction'
  WHEN marks >= 50 THEN 'Pass'
  ELSE 'Fail'
END AS result,
COUNT(*) AS total
FROM students
GROUP BY
CASE
  WHEN marks >= 75 THEN 'Distinction'
  WHEN marks >= 50 THEN 'Pass'
  ELSE 'Fail'
END;

-- 4. Average attendance per course, only courses with more than 2 students
SELECT s.course, AVG(a.days_present) AS avg_days
FROM students s
JOIN attendance a ON s.id = a.student_id
GROUP BY s.course
HAVING COUNT(*) > 2;

-- 5. Students from the same city with the same course (self join)
SELECT a.name AS student1, b.name AS student2, a.city, a.course
FROM students a
JOIN students b ON a.city = b.city AND a.course = b.course AND a.id < b.id;
