use fc;
#Do GROUP BY with ‘job’ column and count total number of records in each job category
SELECT job,COUNT(1) as 'JOBS COUNT'
FROM bank_marketing
GROUP BY job;
#Do a GROUP BY with ‘education’ field and select only education categories HAVING count > 5000.
SELECT education,COUNT(1) as num
FROM bank_marketing
GROUP BY education
HAVING num>5000;
#On an average, did single people’s call duration was longer or married people? 
SELECT marital,AVG(duration) as average
FROM bank_marketing
WHERE marital IN('single','married')
GROUP BY marital;
#What about the average duration of call for educated versus illiterate people?
SELECT education,AVG(duration) as average
FROM bank_marketing
GROUP BY education;