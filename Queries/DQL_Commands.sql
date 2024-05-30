-- DQL Commands Data Querying Language

SELECT * FROM student; -- displays all rows and columns in the student table
SELECT id,name FROM student; -- displays specific columns

-- Where Clause and Conditions ,where is used to filter the records. The rows are filtered based on conditions.  
/* 
SELECT column1, column2, ...
FROM table_name
WHERE condition;
 */
 
 SELECT * FROM employee
WHERE ename = 'Ramya'; 

SELECT emp_id,ename,salary FROM employee
WHERE salary>2000000; 

SELECT job_desc,emp_id,ename,salary FROM employee
WHERE salary<2600000 AND job_desc = 'MANAGER'; 

SELECT * FROM employee
WHERE job_desc='ADMIN' OR job_desc='HR'; -- though this works next command is a much better choice

SELECT * FROM employee
WHERE job_desc IN ('ADMIN','HR'); 

SELECT * FROM employee
WHERE job_desc NOT IN ('MANAGER','CEO');

SELECT * FROM employee
WHERE salary BETWEEN 2000000 AND 3000000
LIMIT 5; -- limits the records shown 

SELECT * FROM employee 
LIMIT 5 ;   -- Different syntax in oracle/sql server


-- Using Like and wildcards
SELECT * FROM employee
WHERE ename LIKE 'A%'; -- filters name starting with A

SELECT * FROM employee
WHERE ename LIKE 'R%a'; -- filters name starting WITH R AND ending with a

SELECT * FROM employee
WHERE ename LIKE '%I%'; -- filters name containing I

SELECT * FROM employee
WHERE ename LIKE '__I%'; -- filters name with i as third character

SELECT * FROM employee
WHERE ename LIKE 'R\%'; -- filters name starting with R%. \ is the escape character.


SELECT DISTINCT job_desc
FROM employee; -- shows only distinct values without duplicates

-- order by
SELECT * FROM employee
ORDER BY salary; -- order by salary asc

SELECT * FROM employee
ORDER BY salary ASC; -- order by salary asc

SELECT * FROM employee
ORDER BY salary DESC; -- order by salary desc

SELECT *
FROM employee
WHERE job_desc="MANAGER"
ORDER BY salary DESC; -- order the manager salaries in desc order

SELECT * FROM employee
ORDER BY job_desc,ename; -- first sorts by job_desc and then by ename

SELECT * FROM employee
ORDER BY 
(CASE job_desc      -- specific order
WHEN 'CEO' THEN 1
WHEN 'MANAGER' THEN 2
WHEN 'HR' THEN 3
WHEN 'ANALYST' THEN 4
WHEN 'SALES' THEN 5
ELSE 100 END);


-- Group by is used to group the table based on conditions and analyze values within the group using aggregate functions.

-- Where is used to filter the rows before grouping. Having is used to filter the groups.

SELECT job_desc,FORMAT(AVG(salary),0) avg_sal
FROM employee
GROUP BY job_desc; -- shows avg salary of each category within job_desc

SELECT job_desc,COUNT(emp_id) count
FROM employee
GROUP BY job_desc; -- displays number of employees count in each job_desc category


SELECT job_desc,COUNT(emp_id) AS count -- using as for aliasing
FROM employee
GROUP BY job_desc
HAVING COUNT(emp_id)>1; --  displays number of employees count in each job_desc category only when count is greater than 1.

SELECT job_desc,COUNT(emp_id) AS count
FROM employee
GROUP BY job_desc
HAVING COUNT(emp_id)>1
ORDER BY job_desc;  -- same as above ordered by job_desc asc

SELECT job_desc,COUNT(emp_id) AS count
FROM employee
GROUP BY job_desc
HAVING COUNT(emp_id)>1
ORDER BY COUNT(emp_id) DESC;  -- same but ordered by Desc order of COUNT in each group

SELECT job_desc,COUNT(emp_id) AS count
FROM employee
WHERE salary>1500000
GROUP BY job_desc
HAVING COUNT(emp_id)>1
ORDER BY COUNT(emp_id) DESC; -- with additional filtering of salary> 15L. Only those with sal more than 15L is considered for grouping