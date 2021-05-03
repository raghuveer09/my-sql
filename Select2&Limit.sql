#to use the db
USE fc;
#to see the tables of the database by using db
SHOW TABLES;
#to see the table names of database without using db
SHOW TABLES FROM fc; 
#applying select statements
SELECT * FROM bank_marketing;
# applying select statement without using USE FC
SELECT * FROM fc.bank_marketing;
#usimg limit manually along with select
SELECT * FROM bank_marketing LIMIT 5;
#USING COLUMN NAMES TO SELECT DATA
SELECT age,job FROM bank_marketing LIMIT 10;
SELECT marital,education,loan FROM bank_marketing LIMIT 10;
## applying count,max,min,sum functins 
SELECT COUNT(1) FROM bank_marketing LIMIT 10;
SELECT sum(loan) FROM bank_marketing LIMIT 10;
SELECT MAX(loan) FROM bank_marketing LIMIT 10;
SELECT MIN(loan) FROM bank_marketing LIMIT 10;


