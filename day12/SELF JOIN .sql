-- Day 12: Self Joins

-- 1. Basic self join 
SELECT e.name AS Employee,
       m.name AS manager
FROM employees e
JOIN employees m
ON e.manager_id = m.id;
