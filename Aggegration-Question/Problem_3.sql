-- Problem: Revising Aggregations - Averages
--Platform: HackerRank
--Difficulty: Easy

Question: Query the average population of all cities in CITY where District is California.

SELECT AVG(POPULATION) AS avg_population
FROM CITY
WHERE DISTRICT = 'California';
