-- DCL Commands  GRANT and REVOKE
-- 1. GRANT   : providing privileges to the user.
-- 2. REVOKE : taking back the privileges from the user. 

-- creating  a user
 CREATE USER 'ashvini'@'localhost' IDENTIFIED BY 'maria@1234';  -- created in tcs_test
 
 -- To see the user Exist
  select USER,HOST from mysql.user;
 
 -- viewing the privileges for a user :
 SHOW GRANTS for 'username'@'host_name' ;

-- viewing privileges for current user :
 SHOW GRANTS ;
 -- granting privileges 
 GRANT 'privilege' ON wipro_online.student TO 'username'@'host_name';
 
 
 -- delete a user :
 DROP USER 'username'@'localhost';

-- change the password : 
 ALTER USER 'username'@'localhost' identified by 'new_password' ; 

-- change the username : ( get into mysql db first)
 UPDATE USER SET user = 'new_username' WHERE user = 'old_username';