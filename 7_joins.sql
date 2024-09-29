-- inner joins --

select * 
from parks_and_recreation.employee_demographics
;

select * 
from parks_and_recreation.employee_salary
;


select * 
from parks_and_recreation.employee_demographics as dem
inner join  employee_salary	 as sal
	on dem.employee_id = sal.employee_id
;

select sal.employee_id, age, occupation 
from parks_and_recreation.employee_demographics as dem
inner join  employee_salary	 as sal
	on dem.employee_id = sal.employee_id
;


-- outer joins ---


select *
from parks_and_recreation.employee_demographics as dem
RIGHT join  employee_salary	 as sal
	on dem.employee_id = sal.employee_id
;



-- SELF JOIN ---


SELECT * 
from parks_and_recreation.employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id + 2 = emp2.employee_id
;


SELECT emp1.employee_id as santa,
emp1.first_name as santa_name,
emp2.employee_id as santa,
emp2.first_name as santa_name
from parks_and_recreation.employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id + 2 = emp2.employee_id
;



-- joining multiple tables together--


select * 
from parks_and_recreation.employee_demographics as dem
inner join  employee_salary	 as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id = pd.department_id
;
