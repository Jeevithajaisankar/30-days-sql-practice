-- Day 14: Joins Revision

-- 1. INNER JOIN + GROUP BY + HAVING (combining joins with aggregation from Week 2)
SELECT courses.course_name, COUNT(students.student_id)
FROM students 
INNER JOIN courses
ON students.course_id = courses.course_id
GROUP BY courses.course_name
HAVING COUNT(students.student_id)>1;

