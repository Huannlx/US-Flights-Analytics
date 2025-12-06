
--Which route has the most flights?

SELECT
	us_flight.Route_flight,
	SUM(us_flight.Departures_Performed) AS Total_Flight,
	FORMAT(SUM(us_flight.Passengers)/SUM(us_flight.Departures_Performed),'N0') AS AVG_Passengers_Per_Flight,
	FORMAT(SUM(us_flight.Passengers)/SUM(NULLIF(us_flight.Seats,0)),'P2') AS Full_Seat_Ratio,
	FORMAT(AVG(us_flight.Air_Time/us_flight.Departures_Performed),'N0') AS AVG_Flight_Time,
	FORMAT(AVG(us_flight.Ramp_to_Ramp/us_flight.Departures_Performed) - AVG(us_flight.Air_Time/us_flight.Departures_Performed),'N0') AS AVG_Delay_Time
FROM Fact_US_Flight us_flight
GROUP BY
	us_flight.Route_flight
ORDER BY Total_Flight DESC;