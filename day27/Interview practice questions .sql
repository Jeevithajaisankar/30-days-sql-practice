-- Day 27: Interview Questions Practice

-- 1. Find the second highest marks
SELECT MAX(marks) AS second_highest
FROM students
WHERE marks < (SELECT MAX(marks) FROM students);

-- 2. Find duplicate names
SELECT name, COUNT(*) AS occurrences
FROM students
GROUP BY name
HAVING COUNT(*) > 1;

-- 3. Courses where average marks are above the overall average
SELECT course, AVG(marks) AS avg_marks
FROM students
GROUP BY course
HAVING AVG(marks) > (SELECT AVG(marks) FROM students);

-- 4. Students who have no attendance record
SELECT s.name
FROM students s
LEFT JOIN attendance a ON s.id = a.student_id
WHERE a.student_id IS NULL;

-- 5. Top 2 scorers in each course
WITH ranked AS (
  SELECT name, course, marks,
  DENSE_RANK() OVER (PARTITION BY course ORDER BY marks DESC) AS rnk
  FROM students
)
SELECT name, course, marks FROM ranked WHERE rnk <= 2;
