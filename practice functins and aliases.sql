USE fc;
SHOW TABLES;
SELECT * FROM bank_marketing;
SELECT MAX(duration) FROM bank_marketing;
SELECT COUNT(1) FROM bank_marketing WHERE job='housemaid';
SELECT COUNT(1) FROM bank_marketing WHERE marital='married' AND job='blue-collar';
SELECT COUNT(1) FROM bank_marketing;

