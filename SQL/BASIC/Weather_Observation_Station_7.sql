/*
Weather Observation Station 7
=============================

Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

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
Here is the MS SQL query to retrieve the list of unique CITY names ending with vowels from the STATION table:
*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%[aeiou]';

/*
The SELECT DISTINCT clause returns only unique CITY names that match the specified pattern. The WHERE clause filters out any CITY names that don't end with a vowel. The pattern %[aeiou] matches any string that ends with a vowel (a, e, i, o, or u) preceded by any number of characters.
*/