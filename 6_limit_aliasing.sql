-- LIMIT AND ALIASING--

SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 3
;


SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3
;



SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;



-- ALIASING --


select gender, avg(age) AS average_age
from employee_demographics
group by gender
having average_age > 40
;