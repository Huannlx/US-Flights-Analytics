
 -- Which airline operates more efficiently than its competitors?

SELECT
	carrier.Carrier_Name AS Airlines,
	SUM(us_flight.Departures_Performed) AS Total_Flight,
	COUNT(DISTINCT(us_flight.Aircraft_type)) AS Number_Of_Aircraft,
	FORMAT(SUM(us_flight.Passengers)/SUM(us_flight.Departures_Performed),'N0') AS AVG_Passengers_Per_Flight,
	FORMAT(SUM(us_flight.Passengers)/SUM(NULLIF(us_flight.Seats,0)),'P2') AS Full_Seat_Ratio,
	FORMAT(AVG(us_flight.Air_Time/us_flight.Departures_Performed),'N0') AS AVG_Flight_Time,
	FORMAT(AVG(us_flight.Ramp_to_Ramp/us_flight.Departures_Performed) - AVG(us_flight.Air_Time/us_flight.Departures_Performed),'N0') AS AVG_Delay_Time
FROM Fact_US_Flight us_flight
JOIN Dim_Carrier carrier ON us_flight.Carrier_ID = carrier.Carrier_ID
GROUP BY
	carrier.Carrier_Name
ORDER BY Total_Flight DESC;