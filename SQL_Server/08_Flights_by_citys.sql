
-- Which city has the most flights?

WITH CTE_Origin
AS(
SELECT
	airport_origin.City_Name,
	SUM(us_flight.Departures_Performed) AS Origin_Flight
FROM Fact_US_Flight us_flight
JOIN Dim_Airport airport_origin ON us_flight.Origin_Airport_ID = airport_origin.Airport_ID
GROUP BY
	airport_origin.City_Name
),
CTE_Dest AS(
SELECT
	airport_dest.City_Name,
	SUM(us_flight.Departures_Performed) AS Destination_Flight
FROM Fact_US_Flight us_flight
JOIN Dim_Airport airport_dest ON us_flight.Dest_Airport_ID = airport_dest.Airport_ID
GROUP BY
	airport_dest.City_Name
)
SELECT
	O.City_Name AS State,
	O.Origin_Flight,
	D.Destination_Flight
FROM CTE_Origin O
JOIN CTE_Dest D ON O.City_Name = D.City_Name
ORDER BY
	O.Origin_Flight DESC,
	D.Destination_Flight DESC;