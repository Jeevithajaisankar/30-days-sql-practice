-- Day 15: Subqueries in WHERE

-- 1. Basic subquery - find students with marks above average
SELECT name, salary
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);
