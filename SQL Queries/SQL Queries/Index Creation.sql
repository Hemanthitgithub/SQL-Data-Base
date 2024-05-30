SHOW INDEX FROM employee;


CREATE INDEX name_index ON employee(ename);

ALTER TABLE employee
DROP INDEX name_index;

ALTER TABLE employee
ADD INDEX(ename);