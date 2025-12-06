
-- Which state has the most flights?

WITH CTE_Origin
AS(
SELECT
	airport_origin.State_Name,
	SUM(us_flight.Departures_Performed) AS Origin_Flight
FROM Fact_US_Flight us_flight
JOIN Dim_Airport airport_origin ON us_flight.Origin_Airport_ID = airport_origin.Airport_ID
GROUP BY
	airport_origin.State_Name
),
CTE_Dest AS(
SELECT
	airport_dest.State_Name,
	SUM(us_flight.Departures_Performed) AS Destination_Flight
FROM Fact_US_Flight us_flight
JOIN Dim_Airport airport_dest ON us_flight.Dest_Airport_ID = airport_dest.Airport_ID
GROUP BY
	airport_dest.State_Name
)
SELECT
	O.State_Name AS State,
	O.Origin_Flight,
	D.Destination_Flight
FROM CTE_Origin O
JOIN CTE_Dest D ON O.State_Name = D.State_Name
ORDER BY
	O.Origin_Flight DESC,
	D.Destination_Flight DESC;