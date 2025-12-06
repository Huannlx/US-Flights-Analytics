
-- Which type of activity has the most flights and airlines?

WITH CTE_Airlines_type
AS(
SELECT
	carrier_group.Carrier_Group_Name AS Airline_Type,
	SUM(us_flight.Departures_Performed) AS Flight_by_Type,
	SUM(SUM(us_flight.Departures_Performed)) OVER() AS Total_Flight,
	COUNT(DISTINCT(us_flight.Carrier_ID)) AS Number_of_Airlines,
	SUM(COUNT(DISTINCT(us_flight.Carrier_ID))) OVER() AS Total_Airlines
FROM Fact_US_Flight us_flight
JOIN Dim_Carrier_Group carrier_group ON us_flight.Carrier_Group_ID = carrier_group.Carrier_Group
GROUP BY
	Carrier_Group_Name
)
SELECT
	Airline_Type,
	Flight_by_Type,
	FORMAT(Flight_by_Type/Total_Flight,'P2') AS Airline_Type_Percent,
	Number_of_Airlines,
	CONCAT(CAST(Number_of_Airlines*100.00/Total_Airlines AS decimal(10,2)),'%') AS Airline_Distribute_Percent
FROM CTE_Airlines_type
ORDER BY Flight_by_Type DESC;
