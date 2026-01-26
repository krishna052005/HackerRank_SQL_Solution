-- Problem: Interviews
--Platform: HackerRank
--Difficulty: Hard

Question: Samantha interviews many candidates from different colleges using coding challenges and contests. Write a query to print the contest_id, hacker_id, name, and the sums of total_submissions, total_accepted_submissions, total_views, and total_unique_views for each contest sorted by contest_id. Exclude the contest from the result if all four sums are 0.

Note: A specific contest can be used to screen candidates at more than one college, but each college only holds 1 screening contest.

SELECT 
    c.contest_id,
    c.hacker_id,
    c.name,
    SUM(IFNULL(ss.total_submissions,0)) AS total_submissions,
    SUM(IFNULL(ss.total_accepted_submissions,0)) AS total_accepted_submissions,
    SUM(IFNULL(vs.total_views,0)) AS total_views,
    SUM(IFNULL(vs.total_unique_views,0)) AS total_unique_views
FROM Contests c
JOIN Colleges co 
    ON c.contest_id = co.contest_id
JOIN Challenges ch 
    ON co.college_id = ch.college_id

LEFT JOIN (
    SELECT challenge_id,
           SUM(total_submissions) AS total_submissions,
           SUM(total_accepted_submissions) AS total_accepted_submissions
    FROM Submission_Stats
    GROUP BY challenge_id
) ss ON ch.challenge_id = ss.challenge_id

LEFT JOIN (
    SELECT challenge_id,
           SUM(total_views) AS total_views,
           SUM(total_unique_views) AS total_unique_views
    FROM View_Stats
    GROUP BY challenge_id
) vs ON ch.challenge_id = vs.challenge_id

GROUP BY c.contest_id, c.hacker_id, c.name
HAVING 
    total_submissions > 0
 OR total_accepted_submissions > 0
 OR total_views > 0
 OR total_unique_views > 0
ORDER BY c.contest_id;
