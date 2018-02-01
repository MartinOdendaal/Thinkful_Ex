SELECT
	start_station,
	COUNT(Trip_id)
FROM trips
GROUP BY start_station