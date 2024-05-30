 -- DCL commands GRANT and REVOkE--
 -- 1.GRANT : providing privileges to the user.
 -- 2. REVOKE : taking back the privileges from the user .alter
 
 -- creating a user
 CREATE USER 'hemanth'@'localhost' IDENTIFIED BY 'chandu@1234';
 
 select USER,HOST from mysql.user;
 
 SHOW GRANTS for 'username'@'host_name';
 
 Show GRANTS;
 GRANT 'privilege' ON wipro_online TO 'username'@'host_name';
 
 DROP USER 'username'@'localhost';
 ALTER USER 'username'@'localhost' identified by 'new_password';
 UPDATE USER SET user = 'new_username'WHERE user = 'old_username';
 
 
 
