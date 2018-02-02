SELECT
	trips.start_station,
	stations.dockcount,
	COUNT(trips.trip_id) Number_of_trips
FROM
	trips
JOIN
	stations
ON
	trips.start_station = stations.name
GROUP BY stations.name
ORDER BY stations.dockcount