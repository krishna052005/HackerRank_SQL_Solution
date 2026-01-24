-- Problem: Weather Observation Station 15
--Platform: HackerRank
--Difficulty: Easy

Question: Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345 . Round your answer to 4 decimal places.

SELECT round(LONG_W,4) as long_w
FROM STATION
WHERE LAT_N=(
    SELECT max(LAT_N)
    FROM STATION
    WHERE LAT_N<137.2345
);
