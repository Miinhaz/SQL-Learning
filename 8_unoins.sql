-- unions --

select first_name, last_name
from employee_demographics
union all # union distinct
select first_name, last_name
from employee_salary
;


select first_name, last_name
from employee_demographics
union all
select first_name, last_name
from employee_salary
;



select first_name, last_name, 'old ass lady'
from employee_demographics
where age > 40 	and gender = 'Female'
union 
select first_name, last_name, 'old ass man'
from employee_demographics
where age > 40 	and gender = 'Male'
union 
select first_name, last_name, 'highly paid fuck'
from employee_salary
where salary > 70000
order by first_name, last_name
;



