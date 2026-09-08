-- Day 5: Aggregation Practice (with WHERE conditions)

-- 1. COUNT with WHERE
SELECT COUNT(*) FROM students WHERE course = 'CSE';

-- 2. SUM with WHERE
SELECT SUM(marks) FROM students WHERE age > 19;

-- 3. AVG with WHERE
SELECT AVG(marks) FROM students WHERE course = 'AI';

-- 4. MAX with WHERE
SELECT MAX(marks) FROM students WHERE city = 'chennai';

-- 5. MIN with WHERE
SELECT MIN(marks) FROM students WHERE course = 'IT';

-- 6. Multiple aggregates together
SELECT COUNT(*), AVG(marks), MAX(marks), MIN(marks) FROM students WHERE age BETWEEN 18 AND 21;

-- 7. Aggregate + LIKE
SELECT COUNT(*) FROM students WHERE name LIKE 'S%';

-- 8. Aggregate + IN
SELECT AVG(marks) FROM students WHERE course IN ('AI', 'CSE');
