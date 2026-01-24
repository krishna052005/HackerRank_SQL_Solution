-- Problem: Weather Observation Station 20
--Platform: HackerRank
--Difficulty: Medium

Question: A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

SELECT ROUND(AVG(t.LAT_N), 4)
FROM (
    SELECT LAT_N
    FROM (
        SELECT LAT_N, 
               @rownum := @rownum + 1 AS rn
        FROM STATION, (SELECT @rownum := 0) r
        ORDER BY LAT_N
    ) s
    WHERE rn IN (
        FLOOR((@rownum + 1) / 2),
        CEIL((@rownum + 1) / 2)
    )
) t;
