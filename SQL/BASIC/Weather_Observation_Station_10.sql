/*
Weather Observation Station 10
==============================

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

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
Here is the MS SQL query to retrieve the list of unique CITY names from the STATION table that do not end with vowels:
*/

SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT LIKE '%[aeiou]';

/*
The 'SELECT DISTINCT' clause returns only unique CITY names that do not ends with vowels. The WHERE clause filters out any CITY names that ends with a vowel. The pattern [aeiou]% matches any string that ends with a vowel (a, e, i, o, or u), so the NOT LIKE operator excludes those strings from the result set.
*/