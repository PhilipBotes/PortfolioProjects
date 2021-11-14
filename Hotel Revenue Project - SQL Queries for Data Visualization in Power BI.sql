/*
Exploratory Data Analysis in SQL
*/


WITH Hotels AS (
SELECT * FROM HotelRevenueProject..[2018]
UNION
SELECT * FROM HotelRevenueProject..[2019]
UNION
SELECT * FROM HotelRevenueProject..[2020])

SELECT 
arrival_date_year,
hotel,
ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr),2) AS revenue 
FROM Hotels
GROUP BY arrival_date_year, hotel



WITH Hotels AS (
SELECT * FROM HotelRevenueProject..[2018]
UNION
SELECT * FROM HotelRevenueProject..[2019]
UNION
SELECT * FROM HotelRevenueProject..[2020])

SELECT * FROM Hotels
LEFT JOIN HotelRevenueProject..MarketSegments
ON Hotels.market_segment = MarketSegments.market_segment
LEFT JOIN HotelRevenueProject..MealCost
ON MealCost.meal = Hotels.meal