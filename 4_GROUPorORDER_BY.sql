-- GROUP BY --

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;


SELECT *
FROM parks_and_recreation.employee_salary
;


SELECT occupation, salary, AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary
;


-- order by ---

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name ASC 
#DECS
;


SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age DESC 
;



SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5, 4 DESC 
;


