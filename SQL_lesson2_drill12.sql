WITH
	itsraining
AS (
	SELECT
		Date weatherdate
	FROM
		weather
	WHERE Events LIKE '%rain'
	GROUP BY 1
	),

WITH
	maxtrips
AS (
SELECT
	DATE(start_date) tripdate,
	MAX(duration) maxduration
FROM
	trips
GROUP BY start_date
)

SELECT
	itsraining.weatherdate,
	maxtrips.maxduration
FROM
	itsraining
JOIN
	maxtrips
ON
	itsraining.weatherdate = maxtrips.tripdate
	
	