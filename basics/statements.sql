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