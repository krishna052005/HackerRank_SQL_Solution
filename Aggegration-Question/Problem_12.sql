-- Problem: Weather Observation Station 16
--Platform: HackerRank
--Difficulty: Easy

Question: Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.

SELECT round(min(LAT_n),4) as lat_n
FROM STATION
WHERE LAT_n>38.7780;
