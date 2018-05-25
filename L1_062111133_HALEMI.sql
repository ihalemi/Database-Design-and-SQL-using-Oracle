-- Lab 1
---------------------------------
-- Ilias Halemi
-- 062 111 133
-- May 10th, 2018
---------------------------------

SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
SELECT * FROM JOB_HISTORY;

-- Q1:
-- The widest and longest table is the employees table.

-- Q2:
-- a. SET pagesize 200 command at command prompt
-- b. The wider table looks better but the headings still overlap and are not displayed all in one line like in the Oracle Developer.
-- c. For the longest table the headings are all displayed at the top as opposed to when the headings displayed every 10 lines.
-- d. Using the command SET linesize to about 180-200 made the table more readable as the headings no longer overlapped and were displayed in one line along with the columns. Solved the issue mentioned in question 2b and c.


-- Q3: We need to use AS when giving aliases to fields and Hire Date need to be written as Hire_Date.
SELECT last_name AS "LName", job_id AS "Job Title", Hire_Date AS "Job Start"
FROM EMPLOYEES;


-- Q4: last name needs to match the field name exactly, so last_name. Also commision_pct Emp Comm needs to be written as commission_pct AS "Emp Comm". 
-- The last error is that you dont need a commad for the last field of a select statement. 
SELECT employee_id, last_name, commission_pct AS "Emp Comm"
FROM employees;

-- Q5: Use DESCRIBE keyword
DESCRIBE LOCATIONS;

-- Q6: 
SELECT location_id AS "City#", city AS "City", 'IN THE ' || country_id AS "Province with Country Code"
FROM LOCATIONS;
