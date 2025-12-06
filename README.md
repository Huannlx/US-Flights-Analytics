# END-TO-END US FLIGHTS ANALYSIS PROJECT

## INTRODUCTION

This project presents a comprehensive analysis of US domestic airline operations using the T-100 Segment dataset from 2020 to 2024, consisting of over 2 million records.

The aim is to explore airline performance trends, identify key operational insights, and visualize meaningful metrics through an end-to-end data analytics workflow.

Raw dataset: [T-100 Segment (US Carriers Only)]( https://www.transtats.bts.gov/DL_SelectFields.aspx?gnoyr_VQ=GDM&QO_fu146_anzr=)

## PROJECT OBJECTIVES

This project aims to provide comprehensive analyze  US domestic airline operations from 2020–2024. Key objectives include:

- Analyze US domestic airline operations from 2020 to 2024 using the T-100 Segment dataset to uncover key trends in flight volume, passenger traffic, and route utilization.
- Identify top-performing carriers and routes, highlighting market concentration
- Examine seasonal and yearly trends to understand the impact of external factors on flight operations and passenger demand.
- Build interactive dashboards to support data-driven decision-making and provide stakeholders with a clear understanding of airline performance trends.

## SKILLS DEMONSTRATED

- **Data Cleaning:** Python (Pandas, NumPy) for preprocessing large datasets.
- **Data Analysis:** SQL for querying business metrics.
- **Visualization:** Power BI for creating interactive dashboards with DAX measures.
- **Version Control:** Git/GitHub for project management.
- **Problem-Solving:** Tackled real-world data challenges like missing values and inconsistent formats.

## MY SQL QUERIES WERE:

1. How flight trends change over time? [Flight_Question_1](SQL_Server/01_Flight_trends.sql)
2. How passengers trends change over time? [Flight_Question_2](SQL_Server/02_Passenger_trends.sql)
3. What is the seat occupancy rate of airlines over time? [Flight_Question_3](SQL_Server/03_Seat_occupancy_rate.sql)
4. Which airline operates more efficiently than its competitors? [Flight_Question_4](SQL_Server/04_Best_operate_airlines.sql)
5. Which route has the most flights? [Flight_Question_5](SQL_Server/05_Most_flight_routes.sql)
6. Which type of activity has the most flights and airlines? [Flight_Question_6](SQL_Server/06_Most_airline_types.sql)
7. Which state has the most flights? [Flight_Question_7](SQL_Server/07_Flights_by_states.sql)
8. Which city has the most flights? [Flight_Question_8](SQL_Server/08_Flights_by_citys.sql)

## POWER BI

Model View: [MODEL_VIEW](PowerBI/04_Model_view.png)

Dashboard 1: [Flights Overview](PowerBI/01_Flights_Overview.png)

Dashboard 2: [Airlines](PowerBI/02_Airlines.png)

Dashboard 3: [Airport](PowerBI/03_Airport.png)

Follow the link report: [Interactive Dashboard](https://app.powerbi.com/view?r=eyJrIjoiN2U5ODMzYjMtYTNlOC00OGYwLTkwYmQtY2M1NmZiNGIyMzAwIiwidCI6ImI3YmQ2YWM0LWUxYjYtNGJlZC1iNWI4LWUyMThiMGFmZTM5MSIsImMiOjF9&pageName=944456745bf61140c99c)

## DASHBOARD SUMMARY

This dashboard provides a comprehensive analysis of the U.S. T100 Segment Flights dataset from 2020 to 2024. Over the five-year period, flight activity shows a steady upward trend, reflecting the industry’s recovery and growth. Key metric:

- Total Flights: 42.95 million 
- Total Airlines: 127
- Average flight duration: 125 minutes
- Average delay time: 23 minutes.

## KEY INSIGHTS

- **Steady growth:** Flights and passengers increased steadily each year, with noticeable seasonal fluctuations — peaking in July and August.
- **Market Share**: Major carriers account for nearly 80% of flights, emphasizing their dominant network presence.
- **Route Concentration:** Key routes include OGG–HNL, LAX–SFO, and LAS–LAX, while overall route distribution is fairly balanced
- **Geographic Focus**: West and South regions drive over 60% of activity; top hubs include Atlanta, Chicago, Dallas, and Los Angeles.
- **Operational Efficiency**: Average delay is 23 minutes, with major carriers experiencing higher delays, indicating a need for operational improvements.

## CHALLENGES FACED

- **Handling Data:** handle missing, duplicate data and delete unreasonable data.
- **Performance:** Optimized SQL queries for large datasets by indexing key columns.
- **Visualization:** Use dax to calculate and present key data. Designed intuitive dashboards by iterating on layout and color schemes for clarity.

## TECHNOLOGIES USED

- **Python (Pandas, Numpy)** → Data cleaning and preprocessing
- **Jupyter notebook:** → Reproducible code environment
- **SQL Server** → Business queries and analysis
- **Power BI** → Data visualization and interactive dashboard
- **Git/GitHub** → Version control and project management

## CONTACT

I'm passionate about data analysis and always open to feedback or opportunities!
- **LinkedIn:** [My profile](https://www.linkedin.com/in/nguyen-huan/)
- **Email:** nguyenlexuanhuan@gmail.com
- **Medium:** [Medium blog](https://medium.com/@nguyenlexuanhuan)

Star this repo if you find it useful! 🌟 Contributions and suggestions are welcome!
