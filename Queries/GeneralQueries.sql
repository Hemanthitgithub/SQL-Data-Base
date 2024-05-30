Show databases; -- To show the databases in system
Create Database wipro_Online; -- or Create schema wipro_Online;
Drop database wipro_Online; --  or Drop schema wipro_Online; or Drop schema IF EXISTS wipro_Online;
Use wipro_Online; -- To Choose a datbase
Show tables; -- To see the tables from the database
SHOW CHARACTER SET; -- shows various character sets that are supported. latin1 is the default character set.
-- district varchar(10) character set utf8    -- the particular column is set to utf8
-- create database foreign_sales character set utf8;   -- entire database is set to utf8

/* To copy table
INSERT INTO first_table_name [(column1, column2, ... columnN)] 
   SELECT column1, column2, ...columnN 
   FROM second_table_name
   */

 


