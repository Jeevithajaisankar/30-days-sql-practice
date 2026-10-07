-- Day 23: Top-N per group

-- 1. BASIC QUERY - Top N records inside each group
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER(
               PARTITION BY department
               ORDER BY salary DESC
           ) AS rn
    FROM employees
) t
WHERE rn <= 2;
  
