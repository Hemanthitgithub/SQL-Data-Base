CREATE TABLE clients (
client_id INT PRIMARY KEY AUTO_INCREMENT,
LOCATION VARCHAR(30)NOT NULL,
addr VARCHAR(200));

INSERT INTO clients VALUES(1,'NewYork','25 1oth block');
INSERT INTO clients VALUES(1,'chennai','120 15th block');
INSERT INTO clients VALUES(1,'mumbai','21 ABC Road');


SELECT * FROM branch
UNION SELECT * FROM clients;

SELECT * FROM branch
UNION ALL
SELECT * FROM clients;

