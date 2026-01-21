-- Problem: Weather Observation Station 11
--Platform: HackerRank
--Difficulty: Easy

Question: Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT REGEXP '^[AEIOUaeiou]'
OR CITY NOT REGEXP '[AEIOUaeiou]$';
