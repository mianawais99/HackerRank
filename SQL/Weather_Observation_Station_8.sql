/*
Weather Observation Station 8
=============================

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

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
Here is the MS SQL query to retrieve the list of unique CITY names from the STATION table which have vowels as both their first and last characters:
*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '[aeiou]%[aeiou]';

/*
The SELECT DISTINCT clause returns only unique CITY names that match the specified pattern. The WHERE clause filters out any CITY names that don't have vowels as both their first and last characters. The pattern [aeiou]%[aeiou] matches any string that starts with a vowel (a, e, i, o, or u), followed by any number of characters, and ends with a vowel.
*/