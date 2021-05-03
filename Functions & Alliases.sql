USE fc;
SELECT MIN(patent_impact),MAX(patent_impact),AVG(patent_impact),STDDEV(patent_impact) FROM fc_patents;
SELECT 
	MIN(patent_impact) as min_pi,
	MAX(patent_impact) as max_pi,
	AVG(patent_impact) as avg_pi,
	STDDEV(patent_impact) as std_pi
 FROM fc_patents;
SELECT 
	ROUND(MIN(patent_impact),2) as min_pi,
	ROUND(MAX(patent_impact),2) as max_pi,
	ROUND(AVG(patent_impact),2) as avg_pi,
	ROUND(STDDEV(patent_impact),2) as std_pi 
FROM fc_patents;