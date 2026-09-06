-- Day 3: Mixed Basics Practice (combining Days 1-2 concepts)

-- 1. WHERE + LIKE + ORDER BY
SELECT name, marks FROM students WHERE name LIKE 'S%' ORDER BY marks DESC;

-- 2. BETWEEN + IN
SELECT name, course FROM students WHERE age BETWEEN 18 AND 21 AND course IN ('AI', 'CSE');

-- 3. NOT + LIKE
SELECT name FROM students WHERE name NOT LIKE 'A%';

-- 4. DISTINCT + WHERE
SELECT DISTINCT course FROM students WHERE marks > 60;

-- 5. ORDER BY + LIMIT (Top N pattern)
SELECT name, marks FROM students ORDER BY marks DESC LIMIT 3;

-- 6. AND + OR combined (parentheses matter here)
SELECT name FROM students WHERE (course = 'AI' OR course = 'CSE') AND age > 19;

-- 7. IN + ORDER BY
SELECT name, city FROM students WHERE city IN ('chennai', 'madurai') ORDER BY name ASC;

-- 8. NULL check + WHERE
SELECT name FROM students WHERE marks IS NOT NULL AND marks > 50;

-- 9. BETWEEN + NOT
SELECT name FROM students WHERE age NOT BETWEEN 18 AND 20;

-- 10. LIKE (contains) + LIMIT
SELECT name FROM students WHERE name LIKE '%an%' LIMIT 5;
