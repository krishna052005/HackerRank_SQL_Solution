-- Problem: Japan Population
--Platform: HackerRank
--Difficulty: Easy

Question: Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

SELECT SUM(POPULATION) as total_population FROM CITY
WHERE COUNTRYCODE = 'JPN';
