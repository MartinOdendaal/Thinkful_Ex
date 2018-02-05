SELECT
	neighbourhood,
	room_type,
	AVG(price) avgprice
FROM
	listings
WHERE room_type = 'Entire home/apt'
GROUP BY neighbourhood
ORDER BY avgprice DESC