-- Day 10: LEFT JOIN / RIGHT JOIN

-- 1. Basic LEFT JOIN 
SELECT students.student_name, course.course_name
FROM students 
LEFT JOIN course
ON student.course_id = course.course_id;

-- 2. LEFT JOIN + WHERE
SELECT students.students_name, course.course_name
FROM students 
LEFT JOIN course
ON student.student_id = course.course_id
WHERE course.course_id = 'AI'

-- 3. RIGHT JOIN 
SELECT students.student_name, course.course_name
FROM students 
RIGHT JOIN course 
ON students.course_id = course.course_id;
