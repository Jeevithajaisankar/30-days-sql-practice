-- Day 2: LIKE, BETWEEN, IN + Revision

-- 1. LIKE - pattern matching (starts with)
SELECT name FROM students WHERE name LIKE 'A%';

-- 2. LIKE - pattern matching (ends with)
SELECT name FROM students WHERE name LIKE '%a';

-- 3. LIKE - contains a substring
SELECT name FROM students WHERE name LIKE '%vi%';

-- 4. BETWEEN - range filtering
SELECT name FROM students WHERE age BETWEEN 18 AND 21;

-- 5. BETWEEN - range filtering
SELECT name FROM students WHERE age BETWEEN 19 AND 20;

-- 6. IN - matching a list of values
SELECT name FROM students WHERE city IN ('chennai', 'madurai');

-- 7. NOT IN - excluding a list of values
SELECT name FROM students WHERE city NOT IN ('chennai', 'madurai');

-- 8. Revision: combining LIKE + AND
SELECT name FROM students WHERE name LIKE 'A%' AND age = 20;

-- 9. Revision: combining BETWEEN + ORDER BY
SELECT name FROM students WHERE age BETWEEN 18 AND 20 ORDER BY age ASC;
