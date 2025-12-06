

-- What is the seat occupancy rate of airlines over time?

WITH CTE_airlinestrend
AS(
SELECT
	dd.Year AS Year,
	dd.Month_num AS Month_num,
	dd.Month AS Month,
	carrier.Carrier_Name AS Airlines,
	SUM(us_flight.Passengers)/SUM(NULLIF(us_flight.Seats,0)) AS Full_Seat_Ratio
FROM Fact_US_Flight us_flight
JOIN Dim_Date dd ON us_flight.Date_ID = dd.Date_ID
JOIN Dim_Carrier carrier ON us_flight.Carrier_ID = carrier.Carrier_ID
GROUP BY
	dd.Year,
	dd.Month_num,
	dd.Month,
	carrier.Carrier_Name
)
SELECT
	Year,
	Airlines,
	FORMAT(SUM(CASE WHEN Month = 'Jan' THEN Full_Seat_Ratio ELSE 0 END),'P2') AS 'Jan',
	FORMAT(SUM(CASE WHEN Month = 'Feb' THEN Full_Seat_Ratio ELSE 0 END),'P2') AS 'Feb',
	FORMAT(SUM(CASE WHEN Month = 'Mar' THEN Full_Seat_Ratio ELSE 0 END),'P2') AS 'Mar',
	FORMAT(SUM(CASE WHEN Month = 'Apr' THEN Full_Seat_Ratio ELSE 0 END),'P2') AS 'Apr',
	FORMAT(SUM(CASE WHEN Month = 'May' THEN Full_Seat_Ratio ELSE 0 END),'P2') AS 'May',
	FORMAT(SUM(CASE WHEN Month = 'Jun' THEN Full_Seat_Ratio ELSE 0 END),'P2') AS 'Jun',
	FORMAT(SUM(CASE WHEN Month = 'Jul' THEN Full_Seat_Ratio ELSE 0 END),'P2') AS 'Jul',
	FORMAT(SUM(CASE WHEN Month = 'Aug' THEN Full_Seat_Ratio ELSE 0 END),'P2') AS 'Aug',
	FORMAT(SUM(CASE WHEN Month = 'Sep' THEN Full_Seat_Ratio ELSE 0 END),'P2') AS 'Sep',
	FORMAT(SUM(CASE WHEN Month = 'Oct' THEN Full_Seat_Ratio ELSE 0 END),'P2') AS 'Oct',
	FORMAT(SUM(CASE WHEN Month = 'Nov' THEN Full_Seat_Ratio ELSE 0 END),'P2') AS 'Nov',
	FORMAT(SUM(CASE WHEN Month = 'Dec' THEN Full_Seat_Ratio ELSE 0 END),'P2') AS 'Dec',
	FORMAT(AVG(Full_Seat_Ratio),'P2') AS AVG_Full_Seat_All_Time
FROM CTE_airlinestrend
GROUP BY
	Year,
	Airlines;
