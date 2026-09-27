-- Day 18: CTEs (WITH clause)

-- 1. Basic CTE 
WITH IT_Employees AS
  (
  select*
  FROM employees
  WHERE department = 'IT'
  )
select*
FROM IT_Employee;
