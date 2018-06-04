-- Ilias Halemi
-- 062 111 133
-- May 31st, 2018

-- SELECT * FROM employees;
-- Q1 
SELECT to_char((AVG(NVL(salary, 0)) - MIN(salary)), '$999,999,999.99') AS "Real Amount"
  FROM employees;

-- Q2
SELECT department_id,
  to_char(MAX(salary), '$999,999,999.99') AS "High", 
  to_char(MIN(salary), '$999,999,999.99') AS "Low", 
  to_char(AVG(salary), '$999,999,999.99') AS"Avg"
  FROM employees
  GROUP BY department_id
  ORDER BY 4 desc;
  
-- Q3
SELECT department_id AS "Dept#", 
  job_id AS "Job",
  COUNT(job_id) AS "How Many"
  FROM employees
  GROUP BY department_id, job_id
  HAVING COUNT(job_id) > 1
  ORDER BY 3 desc;
  
-- Q4
SELECT job_id AS "Job",
  to_char(SUM(salary), '$999,999,999.99') AS "Monthly Salary"
  FROM employees
  WHERE job_id NOT IN('AD_PRES', 'AD_VP')
  HAVING SUM(salary) > 12000
  GROUP BY job_id
  ORDER BY 2 desc;
  
-- Q5
SELECT manager_id, COUNT(employee_id)
  FROM employees
  WHERE manager_id NOT IN(100, 101, 102)   
  HAVING COUNT(employee_id) > 2
  GROUP BY manager_id
  ORDER BY 2 desc;
  
-- Q6
SELECT department_id, 
  to_char(MAX(hire_date), 'dd-Mon-yyyy') AS "Latest Date",
  to_char(MIN(hire_date), 'dd-Mon-yyyy') AS "Earliest Date"
  FROM employees
  WHERE department_id NOT IN (10,20)
  HAVING MAX(hire_date) < TO_DATE('01012001', 'ddmmyyyy')
  GROUP BY department_id
  ORDER BY 3 desc;