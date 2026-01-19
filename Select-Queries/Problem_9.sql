-- Problem: Weather Observation Station 4
--Platform: HackerRank
--Difficulty: Easy

Question: Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

SELECT COUNT(CITY)-COUNT(DISTINCT CITY) AS difference
FROM STATION;
