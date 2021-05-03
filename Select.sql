#to use the db
USE fc;
#to see the tables of the database by using db
SHOW TABLES;
#to see the table names of database without using db
SHOW TABLES FROM fc; 
#applying select statements
SELECT * FROM fc_patents;
# applying select statement without using USE FC
SELECT * FROM fc.fc_patents;
#usimg limit manually along with select
SELECT * FROM fc_patents LIMIT 5;
#USING COLUMN NAMES TO SELECT DATA
SELECT filing_year,country FROM fc_patents LIMIT 10;
SELECT num_applicants,num_inventors,country FROM fc_patents LIMIT 10;
## applying count,max,min,sum functins 
SELECT COUNT(1) FROM fc_patents LIMIT 10;
SELECT sum(num_applicants) FROM fc_patents LIMIT 10;
SELECT MAX(num_applicants) FROM fc_patents LIMIT 10;
SELECT MIN(filing_year) FROM fc_patents LIMIT 10;


