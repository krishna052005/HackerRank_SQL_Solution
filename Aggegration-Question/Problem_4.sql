-- Problem: Averages Population
--Platform: HackerRank
--Difficulty: Easy

Question: Query the average population for all cities in CITY, rounded down to the nearest integer.

SELECT  floor(AVG(POPULATION)) as avg_population
FROM CITY;
