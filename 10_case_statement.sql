-- case statement ---


select first_name, last_name, age, 
case
	when age > 40 then 'old' 
    when age between 30 and 35 then 'young'
    when age > 50 then 'death door' 
end as age_BRcket
from employee_demographics
;


-- pay increase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- finance = 10%

select first_name,last_name,salary,
case
	when salary < 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
end as new_salary,
case
	when dept_id = 6 then salary * .1
end as bonus
from employee_salary
;





