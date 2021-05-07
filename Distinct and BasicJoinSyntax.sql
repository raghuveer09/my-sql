USE fc;
SELECT tech_field,COUNT(1) as 'NUM' FROM fc_technology 
GROUP BY tech_field 
ORDER BY NUM desc ;
##using distinct
SELECT tech_field,COUNT(DISTINCT patent_id) as 'NUM' FROM fc_technology 
GROUP BY tech_field 
ORDER BY NUM desc ;
###Join Statement
SELECT * FROM fc_patents as a 
JOIN fc_technology as b
ON a.patent_id=b.patent_id;