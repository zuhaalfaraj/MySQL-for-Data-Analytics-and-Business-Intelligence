-- AND // OR
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name = 'Denis' AND (gender = 'F' OR gender = 'M');
    
 -- AND // OR
SELECT 
    *
FROM
    employees
WHERE
    (first_name = 'Kellie'
        OR first_name = 'Aruna')
        AND (gender = 'F');

-- IN / NOT IN
SELECT 
    *
FROM
    employees
WHERE first_name IN ('Denis','Elvis');


-- LIKE // NOT LIKE [Find patterns] + % 
SELECT 
    *
FROM
    employees
WHERE first_name LIKE ('%Mar') ;

-- LIKE // NOT LIKE [Find patterns] + _ "Specify the length"
SELECT 
    *
FROM
    employees
WHERE first_name NOT LIKE ('Mar__') ;