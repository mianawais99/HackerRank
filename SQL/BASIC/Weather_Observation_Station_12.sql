/*
Weather Observation Station 12
==============================

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

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
Here is the MS SQL query to retrieve the list of unique CITY names from the STATION table that do not start with vowels and do not end with vowels
*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '[aeiou]%' AND CITY NOT LIKE '%[aeiou]';
