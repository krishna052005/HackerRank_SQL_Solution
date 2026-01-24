-- Problem: Weather Observation Station 17
--Platform: HackerRank
--Difficulty: Easy

Question: Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4  decimal places.

SELECT round(LONG_W,4) as long_w
FROM STATION
WHERE LAT_N=(
    SELECT min(LAT_N)
    FROM STATION
    WHERE LAT_N>38.7780
);
