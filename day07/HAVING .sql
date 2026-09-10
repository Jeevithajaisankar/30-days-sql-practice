-- Day 7: HAVING

-- 1. Basic HAVING - filter groups by count
SELECT department, COUNT(*) FROM students GROUP BY department HAVING COUNT(*) > 1;

-- 2. HAVING with AVG
SELECT department, AVG(marks) FROM students GROUP BY department HAVING AVG(marks) > 60;

-- 3. HAVING with SUM
SELECT department, SUM(marks) FROM students GROUP BY department HAVING SUM(marks) > 300;

-- 4. WHERE + GROUP BY + HAVING together
SELECT department, AVG(marks) FROM students WHERE age > 18 GROUP BY department HAVING AVG(marks) > 50;

-- 5. HAVING with MAX
SELECT department, MAX(marks) FROM students GROUP BY department HAVING MAX(marks) > 90;

-- 6. HAVING + ORDER BY
SELECT department, COUNT(*) FROM students GROUP BY department HAVING COUNT(*) >= 2 ORDER BY COUNT(*) DESC;
