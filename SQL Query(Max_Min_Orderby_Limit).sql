-- 1. Find the highest paid employee. 
SELECT 
    employee_name, salary
FROM
    employees
WHERE
    salary = (SELECT 
            MAX(salary)
        FROM
            employees);

-- 2. Find the lowest paid employee.
SELECT 
    employee_name, salary
FROM
    employees
WHERE
    salary = (SELECT 
            MIN(salary)
        FROM
            employees);

-- 3. Find the range of salary. 
SELECT 
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary,
    MAX(salary) - MIN(salary) AS salary_range
FROM
    employees;

-- 4. Find the department ID who is paying highest salary 
SELECT 
    department_id
FROM
    employees
WHERE
    salary = (SELECT 
            MAX(salary)
        FROM
            employees);

-- 5. Find the department ID who is paying lowest salary.
SELECT 
    department_id
FROM
    employees
WHERE
    salary = (SELECT 
            MIN(salary)
        FROM
            employees);

-- 6. By how much amount is the lowest salary less than the average salary? 
SELECT 
    MIN(salary) - AVG(salary) AS salary_difference
FROM
    employees;

-- 7. By how much amount is the highest salary greater than the average salary? 8618.0667
SELECT 
    MAX(salary) - AVG(salary)
FROM
    employees;

-- 8. What is the average salary difference between minimum salary and average salary? 
SELECT 
    AVG(min_salary - avg_salary)
FROM
    (SELECT 
        MIN(salary) AS min_salary, AVG(salary) AS avg_salary
    FROM
        employees) AS sub_query;

-- 9. What is the average salary difference between maximum salary and average salary? - 8618.0667
SELECT 
    AVG(max_salary - avg_salary)
FROM
    (SELECT 
        MAX(salary) AS max_salary, AVG(salary) AS avg_salary
    FROM
        employees) AS sub_query;

-- 10. Find the abosulte difference between minimum and average salary Round off the value to nearest integer.
SELECT 
    ROUND(ABS(MIN(salary) - AVG(salary)), 0) AS salary_difference
FROM
    employees;

-- 11. Find the abosulte difference between maximum and average salary Round off the value to three decimal places.
SELECT 
    ROUND(ABS(MAX(salary) - AVG(salary)), 3) AS salary_difference
FROM
    employees;

-- 12. Find the first three employees from employee table.
SELECT 
    *
FROM
    employees
LIMIT 3;

-- 13. Query the first 5 branches from branches table.
 SELECT 
    *
FROM
    branches
LIMIT 5;

-- 14. Query the first 4 employee names who have letter 'a' only once in their names.
SELECT 
    Employee_name
FROM
    employees
WHERE
    employee_name LIKE '%a%'
        AND employee_name NOT LIKE '%a%a%'
LIMIT 4;

-- 15. Query the department IDs for the first two employees having id in the range of 105 to 110. 
SELECT 
    department_id
FROM
    employees
WHERE
    employee_id BETWEEN 105 AND 110
LIMIT 2;
SELECT 
    department_id
FROM
    employees
WHERE
    employee_id IN (105 , 106, 107, 108, 109, 110)
LIMIT 2;

-- 16. Query the first two employee names who are earning more than average salary.
 SELECT 
    employee_name
FROM
    employees
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employees)
LIMIT 2;

-- 17. Write the queries to retrive all the information for both highest and lowest paid employee.
SELECT 
    *
FROM
    employees
WHERE
    salary IN ((SELECT 
            MAX(salary)
        FROM
            employees) , (SELECT 
                MIN(salary)
            FROM
                employees));

-- 18. Find the second highest salary.
SELECT 
    salary
FROM
    employees
WHERE
    salary < (SELECT 
            MAX(salary)
        FROM
            employees)
ORDER BY salary DESC
LIMIT 1; 

-- 19. Query all the data for second highest salaried employee.
SELECT 
    *
FROM
    employees
WHERE
    salary < (SELECT 
            MAX(salary)
        FROM
            employees)
ORDER BY salary DESC
LIMIT 1; 

-- 20. Query all the data for second lowest paid employee.
 SELECT 
    *
FROM
    employees
WHERE
    salary > (SELECT 
            MIN(salary)
        FROM
            employees)
ORDER BY salary
LIMIT 1; 