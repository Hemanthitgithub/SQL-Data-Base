-- Constraints  NOT NULL, AUTO_INCREMENT, DEFAULT, CHECK, UNIQUE

CREATE TABLE employee (
emp_id INT PRIMARY KEY AUTO_INCREMENT, -- id will be auto incremented for new rows
ename VARCHAR(30) NOT NULL, -- null value cannot be inserted for the column
job_desc VARCHAR(20) DEFAULT 'unassigned', -- sets default when not mentioned
salary INT,
pan VARCHAR(10) UNIQUE, -- cannot contain duplicates
CHECK (salary>100000)); 
select * from employee;
INSERT INTO employee(ename,salary) VALUES ('Ramya',1000000);
INSERT INTO employee(ename,salary) VALUES ('Riya',10000); -- erros because of violation of salary check constraint
INSERT INTO employee(salary) VALUES (1000000);
SELECT * FROM employee;




-- Foreign key is a field in one table referring to the primary key of another table.
-- drop previously created tables and create a branch table
CREATE TABLE branch (
branch_id INT PRIMARY KEY AUTO_INCREMENT,
br_name VARCHAR(30) NOT NULL,
addr VARCHAR(200) );

-- create employee table with branch_id as foreign key. It refers to the branch_id of branch table.
CREATE TABLE employee (
emp_id INT PRIMARY KEY,
ename VARCHAR(30),
job_desc VARCHAR(20),
salary INT,
branch_id INT,
CONSTRAINT FK_branchId FOREIGN KEY(branch_id) REFERENCES branch(branch_idemployeeemployee));

-- droping FK
ALTER TABLE employee
DROP FOREIGN KEY FK_branchId;