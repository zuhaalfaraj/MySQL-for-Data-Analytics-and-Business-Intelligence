/*
How many annual contracts with a value higher than or equal to $100,000 have been 
registered in the salaries table?
*/

SELECT 
    COUNT(salary)
FROM
    salaries
WHERE
    salary >= 100000;

/*
How many managers do we have in the “employees” database? Use the star symbol (*) 
in your code to solve this exercise. 
*/
SELECT 
    COUNT(*)
FROM
    dept_manager; 

/*
Select all data from the “employees” table, ordering it by “hire date” in descending order.
*/
SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;