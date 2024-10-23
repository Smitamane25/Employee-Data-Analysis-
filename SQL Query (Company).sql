-- 1. Find branches IDs have SWD department.
SELECT 
    branch_id
FROM
    employees
WHERE
    department_id = 'SWD';
    
-- 2. Fetch IDs and Salaries of employees working at HYD? 
 SELECT 
    employee_id, salary
FROM
    employees
WHERE
    branch_id = 'HYD';
    
-- Count
-- 1. Find the total number of employess working at company.
SELECT 
    COUNT(employee_id)
FROM
    employees;

-- 2. Find how many employees are working at DS department
 SELECT 
    COUNT(employee_id)
FROM
    employees
WHERE
    department_id = 'DS';

-- 3. How many branches have SWD department? Find their IDs.
SELECT 
    COUNT(branch_id)
FROM
    employees
WHERE
    department_id = 'SWD';

-- 4. How many employees working at HYD? 
 SELECT 
    COUNT(employee_id)
FROM
    employees
WHERE
    branch_id = 'HYD';
    
-- 5. How many employees earning more than 45000?
SELECT 
    COUNT(employee_id)
FROM
    employees
WHERE
    salary > 45000;
    
-- 6. How many employees earning more than average salary?*** (Use of Subquery)
SELECT 
    COUNT(employee_id)
FROM
    employees
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employees);

-- Round
-- 1. What is the average salary of an employee working at company?Round off the answer to nearest integer.
 SELECT 
    ROUND(AVG(salary), 0)
FROM
    employees;

-- 2. What is the average salary of an employee working at ITS department? Round off the answer upto 2 decimal places
 SELECT 
    ROUND(AVG(salary), 2)
FROM
    employees
WHERE
    department_id = 'ITS';

-- sum
-- 1. Find the total employee salaries for HYD department.
  SELECT 
    SUM(salary)
FROM
    employees
WHERE
    branch_id = 'HYD';
    
-- In and Between
-- 1. Find the department ids for employess 105,106 and 107.
SELECT 
    department_id
FROM
    employees
WHERE
    employee_id IN (105 , 106, 107); 
SELECT 
    department_id
FROM
    employees
WHERE
    employee_id BETWEEN 105 AND 107;
    
-- 2. Find the unique department ids for employee ids 107,108,109 and 110.
 SELECT DISTINCT
    (department_id)
FROM
    employees
WHERE
    employee_id IN (107 , 108, 109, 110); 
 SELECT DISTINCT
    (department_id)
FROM
    employees
WHERE
    employee_id BETWEEN 107 AND 110;  

-- 3. Find the total unique department ids for employee ids 107, 108, 109 and 110.
 SELECT 
    COUNT(DISTINCT (department_id))
FROM
    employees
WHERE
    employee_id IN (107 , 108, 109, 110); 
 SELECT 
    COUNT(DISTINCT (department_id))
FROM
    employees
WHERE
    employee_id BETWEEN 107 AND 110;
    
-- Like,Wildcard operator(%)
-- 1. Query all the names of employees starting with 'A'.
 SELECT 
    employee_name
FROM
    employees
WHERE
    employee_name LIKE 'A%';

-- 2. Query all the names of employees ending with 'a'.
SELECT 
    employee_name
FROM
    employees
WHERE
    employee_name LIKE '%a';

-- 3. Query all the names of employees starting with 'P'.
SELECT 
    employee_name
FROM
    employees
WHERE
    employee_name LIKE 'P%';

-- 4. Query all the name of employees ending with 's'.
SELECT 
    employee_name
FROM
    employees
WHERE
    employee_name LIKE '%s';
    
-- Like,Wildcard operator(_)
-- 1. Query the names of employees starting with 'A' having 5 letters in their name.
 SELECT 
    employee_name
FROM
    employees
WHERE
    employee_name LIKE 'A____';

-- 2. Query the name of employees ending with 'a' having 5 letters in their name.
SELECT 
    employee_name
FROM
    employees
WHERE
    employee_name LIKE '____a';

-- 3. Query the names of employees ending with 'i' having 5 letters in their names.
 SELECT 
    employee_name
FROM
    employees
WHERE
    employee_name LIKE '____i';
    
-- 4. Query the names of employees containing letter 'a'.
SELECT 
    employee_name
FROM
    employees
WHERE
    employee_name LIKE '%a%';

-- 5. Query the names of employees containing letter 's'.
 SELECT 
    employee_name
FROM
    employees
WHERE
    employee_name LIKE '%s%';

-- 6. Query the names of employees starting and ending with 'A'.
SELECT 
    employee_name
FROM
    employees
WHERE
    employee_name LIKE 'a%a';

-- 7. Query the names of employees having letter 'a' only once.**
SELECT 
    employee_name
FROM
    employees
WHERE
    employee_name LIKE 'a%a'
        AND employee_name NOT LIKE '%a%a%'; 

-- 8. Query the names of branches having letter 'a' in their id.
SELECT 
    branch_name
FROM
    branches
WHERE
    branch_id LIKE '%a%';

-- 9. Find the average salary for an employee working at department whose id starts with 's' .
SELECT 
    AVG(salary)
FROM
    employees
WHERE
    department_id LIKE 's%'; 

-- 10. Query the names of employee who have second letter 'a' in their name.
SELECT 
    employee_name
FROM
    employees
WHERE
    employee_name LIKE '_a%';
    
