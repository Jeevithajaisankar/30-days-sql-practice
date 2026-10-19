-- Day 26: Date Functions and CASE

-- 1. DATE FUNCTIONS in sql - Date functions works with dates, years, months and days.
1. CURDATE() - Get today date
SELECT CURDATE();

2. DATEDIFF() - Find the difference between dates
SELECT DATEDIFF('2024-01-20', '2024-01-15')AS day;

3. DATE_ADD() - Add days to a date
SELECT DATE_ADD('2024-01-15', INTERVAL 10 DAY);

-- 2. CASE STATEMENTS in sql - works like IF-ELSE in programming.
SELECT name, marks
CASE
    WHEN marks >= 80 THEN 'EXCCELLENT'
    WHEN marks >= 50 THEN 'PASS'
    ELSE 'Fail'
END AS result
FROM students;
