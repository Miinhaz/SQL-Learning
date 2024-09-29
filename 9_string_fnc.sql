-- string function ---

select length('skyfall')
;

select upper('skyfall')
;

select trim('    skyfall   ')
;
#there is also ltrim, rtrim



select first_name, length(first_name)
from employee_demographics
order by 2
;


select first_name, upper(first_name)
from employee_demographics
;


select first_name, 
left(first_name, 4),
right(last_name, 4),
substring(first_name, 3, 2),
substring(birth_date,6,2) as birth_month
from employee_demographics;


select first_name, replace(first_name, 'a', 'x')
from employee_demographics;

select first_name, locate('An', first_name)
from employee_demographics;


select first_name, last_name,
concat(first_name,' ', last_name) as full_name
from employee_demographics;



