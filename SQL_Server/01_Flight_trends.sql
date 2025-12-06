
-- How flight trends change over time?

WITH CTE_flightbyyear
AS(
SELECT
	dd.Year AS Year,
	dd.Month_num AS Month_num,
	dd.Month AS Month,
	SUM(us_flight.Departures_Performed) AS Total_Flight
FROM Fact_US_Flight us_flight
JOIN Dim_Date dd ON us_flight.Date_ID = dd.Date_ID
GROUP BY
	dd.Year,
	dd.Month_num,
	dd.Month
)
SELECT
	Year,
	SUM(CASE WHEN Month = 'Jan' THEN Total_Flight ELSE 0 END) AS 'Jan',
	SUM(CASE WHEN Month = 'Feb' THEN Total_Flight ELSE 0 END) AS 'Feb',
	SUM(CASE WHEN Month = 'Mar' THEN Total_Flight ELSE 0 END) AS 'Mar',
	SUM(CASE WHEN Month = 'Apr' THEN Total_Flight ELSE 0 END) AS 'Apr',
	SUM(CASE WHEN Month = 'May' THEN Total_Flight ELSE 0 END) AS 'May',
	SUM(CASE WHEN Month = 'Jun' THEN Total_Flight ELSE 0 END) AS 'Jun',
	SUM(CASE WHEN Month = 'Jul' THEN Total_Flight ELSE 0 END) AS 'Jul',
	SUM(CASE WHEN Month = 'Aug' THEN Total_Flight ELSE 0 END) AS 'Aug',
	SUM(CASE WHEN Month = 'Sep' THEN Total_Flight ELSE 0 END) AS 'Sep',
	SUM(CASE WHEN Month = 'Oct' THEN Total_Flight ELSE 0 END) AS 'Oct',
	SUM(CASE WHEN Month = 'Nov' THEN Total_Flight ELSE 0 END) AS 'Nov',
	SUM(CASE WHEN Month = 'Dec' THEN Total_Flight ELSE 0 END) AS 'Dec',
	FORMAT(SUM(Total_Flight),'N0') AS Total_Flight
FROM CTE_flightbyyear
GROUP BY Year