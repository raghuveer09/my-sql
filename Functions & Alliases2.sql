USE fc;
SELECT * FROM bank_marketing;
SELECT MIN(duration),MAX(duration),AVG(duration),STDDEV(duration) FROM bank_marketing;
SELECT 
	MIN(duration) as min_duration,
	MAX(duration) as max_duration,
	AVG(duration) as average_duration,
	STDDEV(duration) as std_duration
FROM bank_marketing;
SELECT 
	ROUND(MIN(duration),2) as min_duration,
	ROUND(MAX(duration),2) as max_duration,
	ROUND(AVG(duration),2) as average_duration,
	ROUND(STDDEV(duration),2) as std_duration
FROM bank_marketing;