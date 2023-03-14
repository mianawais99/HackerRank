/*
Weather Observation Station 9
=============================

Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

/*
Here is the MS SQL query to retrieve the list of unique CITY names from the STATION table that do not start with vowels:
*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '[aeiou]%';

/*
The SELECT DISTINCT clause returns only unique CITY names that do not start with vowels. The WHERE clause filters out any CITY names that start with a vowel. The pattern [aeiou]% matches any string that starts with a vowel (a, e, i, o, or u), so the NOT LIKE operator excludes those strings from the result set.
*/