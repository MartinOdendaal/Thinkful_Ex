SELECT
	t.trip_id,
	t.duration,
	w.events
FROM
	trips t
JOIN
	weather w
ON
	t.zip_code = w.ZIP
WHERE
	w.events LIKE 'rain'
ORDER BY
	t.duration DESC
LIMIT 3