DROP TABLE employee;

CREATE TABLE branch(
branch_id INT PRIMARY KEY AUTO_INCREMENT,
br_name VARCHAR(30) NOT NULL,
addr VARCHAR(200));

CREATE TABLE employee(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
ename VARCHAR(30)NOT NULL,
job_desc VARCHAR(20);
salary INT,
branch_id INT,
CONSTRAINT FK_branchID FOREIGN KEY(branch_id)REFERENCES branch(branch_id);

INSERT INTO branch VALUES(1,"chennai","16 ABC Road");
INSERT INTO branch VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO branch VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO branch VALUES(4,"Hyderabad","32 10th street");


INSERT INTO employee VALUES(1,"ram",'admin', 1000000,2);
INSERT INTO employee VALUES(2,'harini','manager',2500000,2);
INSERT INTO employee VALUES(3,'george','sales',200000,1);
INSERT INTO employee VALUES(4,'ramya','sales',1300000,2);
INSERT INTO employee VALUES(5,'meena','hrr',2000000,3);
INSERT INTO employee VALUES(6,'ashok','manager',3000000,1);
INSERT INTO employee VALUES(7,'abdul','manager',2000000,1);
INSERT INTO employee VALUES(8,'raghu','engineer',10000000,2);
INSERT INTO employee VALUES(9,'ramya','ceo',8000000,3);
INSERT INTO employee VALUES(10,'aravind','manager',2800000,3);
INSERT INTO employee VALUES(11,'akshay','engineer',1000000,1);
INSERT INTO employee VALUES(12,'john','admin',2200000,1);
INSERT INTO employee VALUES(13,'abinaya','engineer',2100000,2);
INSERT INTO employee VALUES(14,'vidya','admin',22000000,NULL);
INSERT INTO employee VALUES(15,'ranjani','engineer',21000000,NULL);

SELECT* FROM employee;
SELECt* FROM branch;

SELECt employee.emp_id,employee.ename,employee.job_desc,branch.br_name
FROM employee
INNER JOIN branch
ON employee.branch_id=branch.branch_id
ORDER BY emp_id;


SELECT employee.emp_id,employee.ename,employee.job_desc,branch.br_name
FROM employee,branch
WHERE employee.branch_id=branch.branch_id
ORDER BY emp_id;

SELECT e.emp_id,e.enmae,e.job_desc,b.br_name
FROM employee AS e
INNER JOIN branch AS b
ON e.branch_id=b.branch_id
ORDER BY e.emp_id

SELECT employee.emp_id,employee.ename,employee.job_desc,branch.br_name
FROM employee
RIGHT JOIN branch
ON employee.branch_id=branch.branch_id
ORDER BY emp_id;


SELECT employee.emp_id,employee.ename,employee.job_desc,branch.br_name
FROM employee
LEFT JOIN branch
ON employee.branch_id=branch_id
ORDER BY emp_id;

SELECT employee.emp_id,employee.ename,employee.job_desc,branch.br_name
FROM employee
CROSS JOIN branch;

SELECT b.br_name as BranchName,COUNT(e.emp_id)
FROM branch as b
JOIN employee as e
ON b.branch_id = e.branch_id
GROUP BY e.branch_id;





CROSS JOIN branch;

SELECT b.br_name as BranchName,COUNT(e.emp_id)
FROM branch as b
JOIN employee as e
ON b.branch_id = e.branch_id
GROUP BY e.branch_id;
