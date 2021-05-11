USE fc;
SELECT c.owner as company_name , COUNT(DISTINCT patent_id) as total_patents,
COUNT(DISTINCT CASE WHEN country='US' THEN a.patent_id END) as 'us',
COUNT(DISTINCT CASE WHEN country='JP' THEN a.patent_id END) as 'jp',
COUNT(DISTINCT CASE WHEN country NOT IN ('US','JP') THEN a.patent_id END) as 'others'
FROM fc_patents a
INNER JOIN fc_owner_ref b USING(patent_id)
INNER JOIN fc_company c USING(owner_id)
GROUP BY c.owner
ORDER BY total_patents DESC;