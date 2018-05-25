-- Ilias Halemi
-- 062 111 133
-- May 24th 2018
-- LAB - 3

-- Q1
SELECT to_char(sysdate+1, 'fmMonth fmddth "of year" YYYY') AS "Tommorow"
FROM dual;


-- SELECT * FROM employees;
-- Q2
SELECT last_name, first_name, salary, (salary * 1.05) AS "Good Salary", (((salary*1.05) - salary)*12) AS "Annual Pay Increase"
FROM employees
WHERE department_id IN ('20', '50', '60');


--Q3
SELECT upper(last_name) || ', ' || upper(first_name) || ' is ' || job_id AS "Full Name and Job"
FROM employees
WHERE upper(last_name) LIKE '%S' AND (upper(first_name) LIKE 'C%' OR upper(first_name) LIKE 'K%')
ORDER BY last_name;


-- Q4
SELECT last_name, hire_date, ROUND((sysdate - hire_date)/365) AS "Years Worked"
FROM employees, dual
WHERE hire_date < '01-JAN-1992'
ORDER BY 3 desc;


-- Q5 SELECT * FROM locations;
SELECT city, country_id,
(CASE WHEN state_province IS NULL THEN 'Unknown Province' ELSE state_province END) AS "State/Province"
FROM locations
WHERE city LIKE 'S%' AND LENGTH(city) >= 8;


-- Q6
SELECT last_name, hire_date,
TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 12), 'THURSDAY'), 'DAY, Month "the " fmDdspth "of year" YYYY') AS "REVIEW DAY"
FROM employees
WHERE hire_date > '31-DEC-1997'
ORDER BY 3;