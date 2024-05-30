-- DDL commands --
CREATE TABLE student(
id INT PRIMARY KEY,
sname VARCHAR(30),
gpa DECIMAL(3,2));

CREATE TABLE student (
id INT,
sname VARCHAR(30),
gpa DECIMAL (3,2),
PRIMARY KEY(id));

DROP TABLE student;
Truncate TABLE student;
DESCRIBE student;

ALTER TABLE student ADD department VARCHAR(5);

ALTER TABLE student DROP COLUMN department;

ALTER TABLE student DROP department;

ALTER TABLE student RENAME COLUMN gpa to cgpa;

ALTER TABLE student MODIFY COLUMN sname varchar(30);

ALTER TABLE student MODIFY sname varchar(40);

------------------------------------------------------------------
CREATE TABLE employee (
emp_id INT PRIMARY KEY AUTO_INCREMENT,
ename VARCHAR(30)NOT NULL,
job_desc VARCHAR(20),
salary INT,
branch_id INT,
CONSTRAINT FK_BRANCHID FOREIGN KEY(branch_id)REFERENCES branch_id);

------------------------------------------------------------------
CREATE TABLE employee (
emp_id INT PRIMARY KEY AUTO_INCREMENT,
ename  varchar(30)NOT NULL,
job_desc VARCHAR(20),
salary INT);

------------------------------------------------------------------
CREATE TABLE branch (
branch_id INT PRIMARY KEY AUTO_INCREMENT,
br_name VARCHAR(30) NOT NULL,
addr VARCHAR(200));




