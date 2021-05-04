USE fc;
#using group by and having clauses
SELECT filing_year , COUNT(1)
FROM fc_patents
GROUP BY filing_year;
SELECT filing_year as 'FILING YEAR', COUNT(1) as 'patent count'
FROM fc_patents
WHERE filing_year BETWEEN 2001 AND 2018
GROUP BY filing_year;
SELECT country as 'Country', COUNT(1) as num
FROM fc_patents
WHERE filing_year BETWEEN 2001 AND 2018
GROUP BY country
ORDER BY num desc;
SELECT country as 'Country', COUNT(1) as num
FROM fc_patents
WHERE filing_year BETWEEN 2001 AND 2018
GROUP BY country
HAVING num>1000
ORDER BY num desc;