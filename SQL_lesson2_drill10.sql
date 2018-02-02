SELECT
	station_id,
	COUNT(station_id) Number_of_zero
FROM
	status
WHERE docks_available = 0
GROUP BY station_id
ORDER BY COUNT(station_id) DESC
LIMIT 1
