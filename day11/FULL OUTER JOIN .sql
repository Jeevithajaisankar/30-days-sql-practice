-- Day 11: FULL OUTER JOIN

-- 1. Basic FULL OUTER JOIN (PostgreSQL/SQL Server syntax)
SELECT sstudents.name, courses.course
FROM students 
FULL OUTER JOIN courses
ON students.student_id = courses.student_id;

-- 2. FULL OUTER JOIN simulated in MySQL (LEFT + UNION + RIGHT)
SELECT students.name, courses.course
FROM students 
LEFT JOIN courses
ON students.student_id = courses.student_id
UNION
SELECT students.name, courses.course
FROM students 
RIGHT JOIN courses
ON students.student_id = courses.student_id;

-- 3. FULL OUTER JOIN + WHERE 
SELECT students.name, courses.course
FROM students 
LEFT JOIN courses
ON students.student_id = courses.student_id
WHERE courses.course IN ('java', 'python')
UNION
SELECT students.name, courses.course
FROM students 
RIGHT JOIN courses
ON students.student_id = courses.student_id;
WHERE courses.course IN ('java', 'pyhton');
