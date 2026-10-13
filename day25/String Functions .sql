-- Day 25: String Functions

-- 1. CONCAT - join text together
SELECT CONCAT('Hello',' ','World')AS result;

-- 2. SUBSTRING - extract part of a text (first 3 letters of the name)
SELECT SUBSTRING('priya',1,3)AS result;

-- 3. LIKE
SELECT* FROM students WHERE name LIKE "R%";
