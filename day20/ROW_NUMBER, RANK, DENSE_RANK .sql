-- Day 20: ROW_NUMBER, RANK, DENSE_RANK

-- 1. ROW_NUMBER - assign a unique sequential number to each row
SELECT name, marks,
ROW_NUMBER() OVER (ORDER BY marks DESC) AS row_num
FROM students;

-- 2. RANK - same marks get same rank, but skips next rank number
SELECT name, marks,
RANK() OVER (ORDER BY marks DESC) AS rank_num
FROM students;

-- 3. DENSE_RANK - same marks get same rank, but does NOT skip next number
SELECT name, marks,
DENSE_RANK() OVER (ORDER BY marks DESC) AS dense_rank_num
FROM students;
