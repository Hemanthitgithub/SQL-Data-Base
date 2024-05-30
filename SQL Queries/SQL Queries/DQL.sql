SELECT * FROM student;
SELECT id,name FROM student;


SELECT * FROM employee
WHERE ename = 'Ramaya';

SELECT emp_id,ename,salary FROM employee
WHERE salary>2000000;

SELECT job_desc,emp_id,ename,salary FROM employee
WHERE salary<2600000 AND job_desc = 'manager';

SELECT * FROM employee
WHERE job_desc = 'ADMIN' OR job_desc ='HR';

SELECT * FROM employee
WHERE job_desc NOT IN('MANAGER','CEO');

SELECT * FROM employee
WHERE salary BETWEEN 2000000 AND 3000000
LIMIT 5;

SELECT * FROM employee
LIMIT 5;


-- using like and wild cards

SELECT * FROm employee
WHERE ename LIKE 'A%';

SELECT * FROM employee
WHERE enmae LIKE 'R%a';

SELECT * FROM employee
WHERE ename LIKE '%I%';

SELECT * FROM employee
WHERE ename LIKE'__I%';

SELECT * FROM employee
HWERE ename LIKE 'R\%';

SELECT DISTINCT job_desc
FROM employee;

--order by

SELECT * FROM employee
ORDER BY salary;

SELECT * FROM employee
ORDER BY salaryASC;

SELECT * FROM employee
ORDER BY salary DESC;

SELECT * FROM employee
WHERE job_desc = "MANAGER"
ORDER BY salary DESC;

SELECT * FROM employee
ORDER BY job_desc,ename;

SELECT * FROM employee
ORDER BY(CASE job_desc
WHEN 'CEO' THEN 1
WHEN 'MANAGER'THEN 2
WHEN 'HR'THEN 3
WHEN 'ANAYLYST' THEN 4
WHEN 'SALES' THEN 5
ELSE 100 END);


--- group by used to group the table based on conditions

SELECT job_desc,FORMAT(AVG(salary),0)avg_sal
FROM employee
GROUP BY job_desc;

SELECT job_desc,COUNT(Emp_id)count
FROM employrr
GROUP BY job_desc;

SELECT job_desc,COUNT(emp_id)AS count
FROM employee
GROUP BY job_desc
HAVING COUNT(emp_id)>1;

SELECT job_desc,COUNT(emp_id)AS count
FROM employee
GROUP BY job_desc
HAVING COUNT(emp_id)>1
ORDER BY job_desc;

SELECT job_desc,COUNT(emp_id)AS count
FROM employee
GROUP BY job_desc
HAVING COUNT(emp_id)>1
ORDER BY COUNT(emp_id) DESC;

SELECT job_desc,COUNT(emp_id)AS count
FROM employee
WHERE salary>1500000
HAVING COUNT(emp_id)>1
ORDER BY COUNT(emp_id)DESC;



