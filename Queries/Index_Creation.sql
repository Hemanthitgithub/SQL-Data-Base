-- Index

SHOW INDEX FROM employee; -- show current indices

CREATE INDEX name_index ON employee(ename); -- creates a new index

ALTER TABLE employee
DROP INDEX name_index; -- drop index

ALTER TABLE employee
ADD INDEX(ename); -- create index using alter command 