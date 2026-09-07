-- Day 4: Aggregation Functions (COUNT, SUM, AVG, MIN, MAX)

-- 1. COUNT - total number of rows
SELECT COUNT(*) FROM students;

-- 2. COUNT with a condition
SELECT COUNT(*) FROM students WHERE course = 'AI';

-- 3. SUM - total of a column
SELECT SUM(marks) FROM students;

-- 4. AVG - average value
SELECT AVG(marks) FROM students;

-- 5. MAX - highest value
SELECT MAX(marks) FROM students;

-- 6. MIN - lowest value
SELECT MIN(marks) FROM students;

-- 7. Combining aggregates in one query
SELECT COUNT(*), SUM(marks), AVG(marks), MAX(marks), MIN(marks) FROM students;

-- 8. Aggregate + WHERE condition
SELECT AVG(marks) FROM students WHERE age > 19;
