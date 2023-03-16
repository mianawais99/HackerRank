/*
Higher Than 75 Marks
==============================

Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Input Format

The STUDENTS table is described as follows:

+--------+---------+
| Column | Type    |
+--------+---------+
| ID     | Integer |
| Name   | String  |
| Marks  | Integer |
+--------+---------+
*/

/*
Here is the MS SQL query to retrieve the Name of any student in the STUDENTS table who scored higher than 75 Marks, ordered by the last three characters of each name. If two or more students have names ending in the same last three characters, the query sorts them by ascending ID:

*/


SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID ASC;

/*
The WHERE clause filters out any students who scored less than or equal to 75 Marks. The ORDER BY clause sorts the results first by the last three characters of each student's name, using the RIGHT function to extract the rightmost three characters of the Name column. If two or more students have names ending in the same last three characters, the query then sorts them by ascending ID, using the ASC keyword to specify ascending order.
*/
