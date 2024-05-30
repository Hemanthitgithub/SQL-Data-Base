--- DML Commands ---
select * from student;
select * from branch;
select * from employee;
INSERT INTO student VALUES(1,"Aarthi",7.6);
INSERT INTO student VALUES(2,"hemanth",8.5);

INSERT INTO student VALUES
(3,"hemanth",8.5),
(4,"chandu",8.2),
(5,"keerthi",7.6);

INSERT INTO student(id,sname)VALUES(5,"balaji"),(6,"chandu");

INSERT INTO branch VALUES(1,"chennai","16 ABC Road");
INSERT INTO branch VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO branch VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO branch VALUES(4,"Hyderabad","32 10th street");


INSERT INTO employee VALUES(1,"ram",'admin', 1000000);
INSERT INTO employee VALUES(2,'harini','manager',2500000);
INSERT INTO employee VALUES(3,'george','sales',200000);
INSERT INTO employee VALUES(4,'ramya','sales',1300000);
INSERT INTO employee VALUES(5,'meena','hrr',2000000);
INSERT INTO employee VALUES(6,'ashok','manager',3000000);
INSERT INTO employee VALUES(7,'abdul','manager',2000000);
INSERT INTO employee VALUES(8,'raghu','engineer',10000000);
INSERT INTO employee VALUES(9,'ramya','ceo',8000000);
INSERT INTO employee VALUES(10,'aravind','manager',2800000);
INSERT INTO employee VALUES(11,'akshay','engineer',1000000);
INSERT INTO employee VALUES(12,'john','admin',2200000);
INSERT INTO employee VALUES(13,'abinaya','engineer',2100000);
INSERT INTO employee VALUES(14,'vidya','admin',22000000);
INSERT INTO employee VALUES(15,'ranjani','engineer',21000000);


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


-- update and delete in employee table --
UPDATE employee
SET job_desc = "Analyst",

UPDATE employee
SET job_desc = "Analyst"
WHERE job_desc = "Engineer";

UPDATE employee
SET job_desc = "Analyst"
WHERE emp_id=1;

DELETE FROM employee;

DELETE FROM employee;
DELETE from employee
WHERE emp_id = 12;












