-- DISTINCT
SELECT DISTINCT
    gender, first_name
FROM
    employees;
    
    
-- COUNT
SELECT 
    COUNT(emp_no)
FROM
    employees;
    
    
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
   
   
-- ORDER BY
SELECT 
    *
FROM
    employees
ORDER BY first_name, last_name ASC;

-- GROUP BY

SELECT 
    first_name, COUNT(first_name) AS name_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name;

-- HAVING

SELECT 
    first_name, COUNT(first_name) AS name_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;

-- HAVING vs WHERE
SELECT 
    first_name, COUNT(first_name)
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;


-- LIMIT
SELECT 
    emp_no, MAX(salary) AS 'maximum salary'
FROM
    salaries
GROUP BY emp_no
ORDER BY MAX(salary) DESC
LIMIT 10;
