/*
Write a query that obtains two columns. The first column must contain annual salaries
 higher than 80,000 dollars. The second column, renamed to “emps_with_same_salary”,
 must show the number of employees contracted to that salary. Lastly, sort the output by 
 the first column. 
*/

SELECT 
    salary, COUNT(salary) AS 'emps_with_same_salary'
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary;

/*
Select all employees whose average salary is higher than $120,000 per annum.
*/
SELECT 
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;


/* Select the employee numbers of all individuals who have signed more than 1 contract 
after the 1st of January 2000.
*/
SELECT 
    emp_no
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY (emp_no)
HAVING COUNT(from_date) > 1
ORDER BY emp_no;





