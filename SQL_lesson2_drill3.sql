SELECT MinTemperatureF
FROM weather
WHERE
	Events LIKE 'rain' AND
	ZIP =  94301