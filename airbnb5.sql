-- Busiest time to go
-- Least occupancy

SELECT
	strftime('%m', Date) date_month,
	AVG(CAST(available AS NUMERIC)) avg_avail
FROM calendar1
GROUP BY date_month