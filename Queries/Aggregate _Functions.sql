-- Aggregate Functions
SELECT COUNT(*) countOfEmp FROM employee; -- total count of entries in the table

SELECT AVG(salary) FROM employee; -- avg salary of all employees

SELECT AVG(salary) 
FROM employee
WHERE job_desc="MANAGER"; -- avg salary of managers

SELECT SUM(salary)
FROM employee
WHERE job_desc="MANAGER"; -- total salary given to all MANAGER

SELECT * FROM employee
WHERE salary = (SELECT MAX(salary)
FROM employee);  

SELECT MIN(salary) FROM employee;
-- -----------------------String related functions--------------------
SELECT UCASE(ename),salary
FROM employee; -- uppercase

SELECT ename,CHAR_LENGTH(ename)
FROM employee; 

SELECT ename,CONCAT("Rs.",salary)
FROM employee; -- adds Rs. to the beginning of salary

SELECT ename,CONCAT("Rs.",FORMAT(salary,0))
FROM employee; -- formats the number to add comma. The second argument(0 here) represents digits to round off after decimal

SELECT ename,LEFT(job_desc,4)
FROM employee; -- returns only the first 4 characters of the ename

SELECT ename,RIGHT(job_desc,4)
FROM employee; 

-- ----------Date related functions -------------------------------------------
ALTER TABLE employee ADD COLUMN Hire_Date DATE; -- adding hire_date column

select * from employee;
UPDATE  employee
SET Hire_Date="2012-10-05"; -- updating hire_date

UPDATE  employee
SET Hire_Date="2014-10-05"
WHERE job_desc = "MANAGER"; -- updating hire_date

SELECT NOW(); -- Current date and time 

SELECT DATE(NOW()); -- current date

SELECT CURDATE(); -- current system date

SELECT DATE_FORMAT(CURDATE(),'%d/%m/%Y'); -- to change the display format. use %d %m and %y or %Y in required format.

SELECT DATEDIFF(CURDATE(),'2023-05-14') DAYS; -- to calculate date difference



SELECT CURDATE() 'start date',
 DATE_ADD(CURDATE(),INTERVAL 1 DAY) 'one day later',
 DATE_ADD(CURDATE(),INTERVAL 1 WEEK) 'one week later',
 DATE_ADD(CURDATE(),INTERVAL 1 MONTH) 'one month later',
 DATE_ADD(CURDATE(),INTERVAL 1 YEAR) 'one year later';