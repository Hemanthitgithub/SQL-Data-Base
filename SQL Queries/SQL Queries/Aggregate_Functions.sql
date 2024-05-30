-- Aggregate Functions
SELECT COUNT(*) countOFEmp FROM employee;
SELECT AVG(salary)FROM employee;
SELECT AVG(SALARY)
FROM employee
WHERE job_desc="MANAGER";
SELECT SUM(salary)
FROM employee
WHERE job_desc="MANAGER";
SELECT * FROM employee
WHERE salary = (SELECT MAX(salary)
FROM employee);
SELECT UCASE(ename),salary
FROM employee;
SELECT ename,CHAR_LENGTH(ename)
FROM employee;
SELECT ename,CONCAT("Rs.",salary)
FROM employee;
SELECT ename,CONCAT("Rs.",FORMAT(salary,0))
FROM employee;
SELECT ename,LEFT(job_desc,4)
FROM employee;
SELECT ename,RIGHT(job_desc,4)
FROM employee;

ALTER TABLE employee ADD COLUMN Hire_Date;
select * from employee;
UPDATE employee
SET Hire_Date="2012-10-05";
UPDATE employee
SET Hire_Date="2014-10-05"
WHERE job_desc = "MANAGER";
SELECT NOW();
SELECT DATE(NOW());
SELECT CURDATE();
SELECT DATE_FORMAT(CURDATE(),'%d/%m/%Y');
SELECT DATEDIFF(CURDATE(),'2023-05-14')DAYS;

SELECT CURDATE()'start date',
DATE_ADD(CURDATE(),INTERVAL 1 DAY)'one day later',
DATE_ADD(CURDATE(),INTERVAL 1 WEEK)'one week later',
DATE_ADD(CURDATE(),INTERVAL 1 MONTH)'one month later',
DATE_ADD(CURDATE(),INTERVAL 1 YEAR)'one year later';