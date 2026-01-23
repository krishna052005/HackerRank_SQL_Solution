-- Problem: Weather Observation Station 2
--Platform: HackerRank
--Difficulty: Easy

Question: Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.

SELECT round(sum(LAT_N),2) AS lat_sum,
round(sum(LONG_W),2) AS lon_sum
FROM STATION;
