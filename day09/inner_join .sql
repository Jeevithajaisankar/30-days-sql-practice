-- Day 9: INNER JOIN

-- 1. Basic INNER JOIN
SELECT student.name, course.course_name 
FROM student
INNER JOIN course
ON student.course_id = course.course_id;

-- 2. INNER JOIN with table alias
SELECT s.name, c.course_name
FROM student AS s
INNER JOIN course AS c
ON s.course_id = c.course_id;

-- 3. INNER JOIN + WHERE
SELECT s.name, c.course_name
FROM students AS s
INNER JOIN course AS c
ON s.course_id = c.course_id
WHERE c.course_name = 'Data Science';
