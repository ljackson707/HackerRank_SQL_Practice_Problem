# Problems 3

#1)Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA. 

SELECT ID,
        NAME,
        COUNTRYCODE,
        DISTRICT,
        POPULATION
FROM CITY
WHERE POPULATION > 100000
AND COUNTRYCODE LIKE "USA";

#2)Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE "a%"
AND NOT CITY LIKE "e%"
AND NOT CITY LIKE "i%"
AND NOT CITY LIKE "o%"
AND NOT CITY LIKE "u%"
AND NOT CITY LIKE "%a"
AND NOT CITY LIKE "%e"
AND NOT CITY LIKE "%i"
AND NOT CITY LIKE "%o"
AND NOT CITY LIKE "%u";

#3)Query the Name of any student in STUDENTS who scored higher than Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME, 3), ID;

#4)Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

SELECT NAME
FROM EMPLOYEE
ORDER BY NAME ASC;

#5)Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than per month who have been employees for less than months. Sort your result by ascending employee_id.

SELECT NAME
FROM EMPLOYEE
WHERE SALARY > 2000 
AND MONTHS < 10
ORDER BY EMPLOYEE_ID ASC; 

#6)Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

SELECT  c.company_code,
        c.founder,  
        COUNT(distinct l.lead_manager_code), 
        COUNT(distinct s.senior_manager_code), 
        COUNT(distinct m.manager_code),
        COUNT(distinct e.employee_code)
from Company as c 
join Lead_Manager as l 
on c.company_code = l.company_code
join Senior_Manager as s
on l.lead_manager_code = s.lead_manager_code
join Manager as m 
on m.senior_manager_code = s.senior_manager_code
join Employee as e
on e.manager_code = m.manager_code
group by c.company_code, c.founder
order by c.company_code;



