-- Problem: Weather Observation Station 6
--Platform: HackerRank
--Difficulty: Easy

Question: Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[AEIOUaeiou]';
