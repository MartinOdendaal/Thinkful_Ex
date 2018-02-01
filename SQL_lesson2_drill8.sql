SELECT
	end_station,
	AVG(duration) Avg_duration
FROM trips
GROUP BY end_station
ORDER BY Avg_duration