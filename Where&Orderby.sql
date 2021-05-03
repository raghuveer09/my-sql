USE fc;
#APPLYING WHERE CLASS
SELECT * FROM fc_patents WHERE country='US';
# APPLYING OPERATORS WITH WHERE CLASS LIKE AND,OR,NOTEQUAL,IN BETWEEN EQUAL,<,>...
SELECT * FROM fc_patents WHERE country='US' AND filing_year=2015;
SELECT * FROM fc_patents WHERE country='US' AND filing_year=2015 AND patent_impact>1;
SELECT * FROM fc_patents WHERE country='US' AND filing_year<>2015;
SELECT * FROM fc_patents WHERE country='US' AND filing_year BETWEEN 2015 AND 2018;
SELECT * FROM fc_patents WHERE country IN('US','IN')  AND filing_year<=2015 ORDER BY country DESC LIMIT 5;
SELECT * FROM fc_patents WHERE country IN('US','IN')  AND filing_year<=2015 ORDER BY country  LIMIT 5;