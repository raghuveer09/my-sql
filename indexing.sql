USE fc;
#Retrieving dat od distinct patent ids based on tech field and the computation time is higher in this 
SELECT tech_field,COUNT(DISTINCT patent_id) as num
FROM fc_technology
GROUP BY tech_field
ORDER BY num DESC;# computation time is 23.906 sec
# now we can indexing for the same querry which will reduce computation time
CREATE TABLE user.raghu_fc_technology LIKE fc_technology;
INSERT INTO user.raghu_fc_technology SELECT * FROM fc_technology;
CREATE INDEX idx_tech_field ON user.raghu_fc_technology(tech_field);
SELECT tech_field,COUNT(DISTINCT patent_id) as num
FROM user.raghu_fc_technology
GROUP BY tech_field
ORDER BY num DESC;