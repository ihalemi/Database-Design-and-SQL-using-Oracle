-- Ilias Halemi
-- 062 111 133
-- May 17th, 2018
-- Lab 2 DBS301

-- Q1
select employee_id, last_name, salary 
from employees
where salary between 8000 and 15000
order by salary desc, last_name;

-- Q2
select employee_id, last_name, salary 
from employees
where (salary between 8000 and 15000) 
and (job_id = 'IT_PROG' or job_id = 'SA_REP')
order by salary desc, last_name;

-- select * from employees;

-- Q3
select employee_id, last_name, salary 
from employees
where (salary <= 8000 or salary >= 15000) 
and (job_id = 'IT_PROG' or job_id = 'SA_REP')
order by salary desc, last_name;

-- Q4
select last_name, job_id, salary
from employees
where hire_date < DATE '1998-01-01'
order by hire_date desc;

-- Q5 
select last_name, job_id, salary
from employees
where hire_date < DATE '1998-01-01' and salary > 10000
order by job_id, salary desc, hire_date desc;

-- Q6
select job_id as "Job Title", first_name || ' ' || last_name as "Full Name"
from employees
where first_name like '%e%' or first_name like '%E%';

-- Q7 
select last_name, salary, commission_pct
from employees
where commission_pct > 0;

-- Q8
select last_name, salary, commission_pct
from employees
where commission_pct > 0
order by salary desc;

-- Q9
select last_name, salary, commission_pct
from employees
where commission_pct > 0
order by 2 desc;