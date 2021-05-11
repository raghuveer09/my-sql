USE fc;
SELECT job,COUNT(job) as 'total_jobs',
COUNT( CASE WHEN marital='married' THEN job END) as 'married_jobs',
COUNT( CASE WHEN marital NOT IN('married') THEN job END) as 'SINGLE OR DIVORCED JOBS'
 FROM bank_marketing
 GROUP BY job
 ORDER BY total_jobs DESC;
 