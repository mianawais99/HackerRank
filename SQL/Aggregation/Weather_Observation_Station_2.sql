/*
Weather Observation Station 2
=============================
Query the following two values from the STATION table:

1)The sum of all values in LAT_N rounded to a scale of  decimal places.
2)The sum of all values in LONG_W rounded to a scale of  decimal places.

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

where LAT_N is the northern latitude and LONG_W is the western longitude

*/

SELECT CAST(SUM(LAT_N) AS NUMERIC(36,2)), CAST(SUM(LONG_W) AS NUMERIC(36,2))
FROM STATION;


