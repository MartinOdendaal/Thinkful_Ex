SELECT
	city,
	AVG(lat) AVGLAT,
	AVG(long) AVGLON,
	COUNT(*) StatCount
FROM stations
GROUP BY 1