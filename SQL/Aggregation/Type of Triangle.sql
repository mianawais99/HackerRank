/*
Type of Triangle
================
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

Input Format

The TRIANGLES table is described as follows:

+-------------+------------+
| Column      |   Type     |
+-------------+------------+
| A           | INTEGER    |
| B           | INTEGER    |
| C           | INTEGER    |
+-------------+------------+

Each row in the table denotes the lengths of each of a triangle's three sides.

*/

/* 
Here's the MS SQL query to identify the type of each record in the TRIANGLES table:
*/

SELECT CASE
WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
WHEN A = B AND B = C THEN 'Equilateral'
WHEN A = B OR B = C OR A = C THEN 'Isosceles'
ELSE 'Scalene'
END
FROM TRIANGLES;


