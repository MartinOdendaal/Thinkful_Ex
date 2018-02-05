SELECT
	neighbourhood,
	COUNT(id) Number_listings,
	availability_365
FROM listings
GROUP BY neighbourhood
ORDER BY availability_365, Number_listings DESC
