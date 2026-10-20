-- 1. Top 3 students whose name starts with 'S', highest marks first
SELECT name, marks
FROM students
WHERE name LIKE 'S%'
ORDER BY marks DESC
LIMIT 3;

-- 2. Courses with more than 2 students and average marks above 60
SELECT course, COUNT(*) AS total, AVG(marks) AS avg_marks
FROM students
GROUP BY course
HAVING COUNT(*) > 2 AND AVG(marks) > 60;

-- 3. Students who have no attendance record
SELECT s.name
FROM students s
LEFT JOIN attendance a ON s.id = a.student_id
WHERE a.student_id IS NULL;

-- 4. Students scoring above their own course's average
SELECT name, course, marks
FROM students s1
WHERE marks > (
  SELECT AVG(marks) FROM students s2 WHERE s2.course = s1.course
);

-- 5. Top 2 scorers in each course
WITH ranked AS (
  SELECT name, course, marks,
  DENSE_RANK() OVER (PARTITION BY course ORDER BY marks DESC) AS rnk
  FROM students
)
SELECT name, course, marks FROM ranked WHERE rnk <= 2;

-- 6. Number of students in each grade
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
