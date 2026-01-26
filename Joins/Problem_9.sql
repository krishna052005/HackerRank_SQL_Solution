-- Problem: SQL Project Planning
--Platform: HackerRank
--Difficulty: Medium

Question: You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date. It is guaranteed that the difference between the End_Date and the Start_Date is equal to 1 day for each row in the table.
If the End_Date of the tasks are consecutive, then they are part of the same project. Samantha is interested in finding the total number of different projects completed.
Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. If there is more than one project that have the same number of completion days, then order by the start date of the project.

SELECT 
    MIN(Start_Date) AS project_start,
    MAX(End_Date) AS project_end
FROM (
    SELECT 
        Start_Date,
        End_Date,
        SUM(flag) OVER (ORDER BY Start_Date) AS grp
    FROM (
        SELECT 
            Start_Date,
            End_Date,
            CASE 
                WHEN Start_Date = LAG(End_Date) OVER (ORDER BY Start_Date)
                THEN 0 ELSE 1 
            END AS flag
        FROM Projects
    ) t
) x
GROUP BY grp
ORDER BY DATEDIFF(project_end, project_start), project_start;
