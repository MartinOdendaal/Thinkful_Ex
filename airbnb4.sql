--Price is currently not a float
SELECT
	strftime('%m', Date) date_month,
	AVG(SUBSTR(price,2))
FROM calendar1
GROUP BY date_month
ORDER BY date_month