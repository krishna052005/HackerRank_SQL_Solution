-- Problem: Weather Observation Station 7
--Platform: HackerRank
--Difficulty: Easy

Question: Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[AEIOUaeiou]$';
