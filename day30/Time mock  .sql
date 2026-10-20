-- 1.
WITH ranked AS (
  SELECT marks, DENSE_RANK() OVER (ORDER BY marks DESC) AS rnk
  FROM students
)
SELECT DISTINCT marks FROM ranked WHERE rnk = 3;

-- 2.
SELECT course, AVG(marks) AS avg_marks
FROM students
GROUP BY course
HAVING AVG(marks) > (SELECT AVG(marks) FROM students);

-- 3.
SELECT s.name
FROM students s
LEFT JOIN attendance a ON s.id = a.student_id
WHERE a.student_id IS NULL;

-- 4.
WITH ranked AS (
  SELECT name, city, marks,
  ROW_NUMBER() OVER (PARTITION BY city ORDER BY marks DESC) AS rn
  FROM students
)
SELECT name, city, marks FROM ranked WHERE rn = 1;

-- 5.
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
