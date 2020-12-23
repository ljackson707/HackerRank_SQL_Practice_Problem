#Practice 1

#1)
#Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

#The CITY table is described as follows: 

SELECT ID, 
        NAME,
        COUNTRYCODE,
        DISTRICT,
        POPULATION
FROM CITY
WHERE POPULATION > 100000
AND COUNTRYCODE LIKE "%USA%"
LIMIT 5;

#2)
#Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

#The CITY table is described as follows: 

SELECT NAME
FROM CITY
WHERE POPULATION > 120000
AND COUNTRYCODE LIKE "USA"
LIMIT 5;

#3)
#Query all columns (attributes) for every row in the CITY table.

#The CITY table is described as follows:

SELECT ID,
        NAME,
        COUNTRYCODE,
        DISTRICT,
        POPULATION
FROM CITY;

#4)
#Query all columns for a city in CITY with the ID 1661.

#The CITY table is described as follows: 

SELECT ID,
        NAME,
        COUNTRYCODE,
        DISTRICT,
        POPULATION
FROM CITY
WHERE ID = 1661;

#5)
#Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

#The CITY table is described as follows:

SELECT ID,
        NAME,
        COUNTRYCODE,
        DISTRICT,
        POPULATION
FROM CITY
WHERE COUNTRYCODE = "JPN";

#6)
#Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
#The CITY table is described as follows:  

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = "JPN";

#7)
#Query a list of CITY and STATE from the STATION table.
#The STATION table is described as follows:

SELECT CITY,
        STATE
FROM STATION;

#8)
#Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
#The STATION table is described as follows:

SELECT DISTINCT(CITY)
FROM STATION
WHERE (ID % 2) = 0
ORDER BY CITY DESC;

#Practice 2

#1)
#Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table. 

SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;

#2)
#Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:

(SELECT CITY,
        CHAR_LENGTH(CITY) AS len_city
FROM STATION
WHERE CHAR_LENGTH(CITY)=(SELECT CHAR_LENGTH(CITY)
FROM STATION ORDER BY CHAR_LENGTH(CITY) ASC LIMIT  1)
ORDER BY CITY ASC LIMIT 1)
UNION ALL
(SELECT CITY,
        CHAR_LENGTH(CITY) AS len_city
FROM STATION
WHERE CHAR_LENGTH(CITY)=(SELECT CHAR_LENGTH(CITY)
FROM STATION ORDER BY CHAR_LENGTH(CITY) DESC LIMIT  1)
ORDER BY CITY DESC LIMIT 1)
ORDER BY CHAR_LENGTH(CITY);
#3)
#Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION 
WHERE lower(SUBSTR(CITY,1,1)) IN ("a", "e", "i", "o", "u");

#4)
#Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT(CITY)
FROM STATION
WHERE CITY LIKE "%a"
OR CITY LIKE "%e"
OR CITY LIKE "%i"
OR CITY LIKE "%o"
OR CITY LIKE "%u";

#5)
#Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$';

#6)
#Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

SELECT DISTINCT(CITY)
FROM STATION
WHERE NOT CITY LIKE "a%"
AND NOT CITY LIKE "e%"
AND NOT CITY LIKE "i%"
AND NOT CITY LIKE "o%"
AND NOT CITY LIKE "u%";

#7)
#Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT(CITY)
FROM STATION
WHERE NOT CITY LIKE "%a"
AND NOT CITY LIKE "%e"
AND NOT CITY LIKE "%i"
AND NOT CITY LIKE "%o"
AND NOT CITY LIKE "%u";

#8)
#Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE NOT CITY RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$';