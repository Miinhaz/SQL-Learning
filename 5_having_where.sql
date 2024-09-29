-- having vs where ---

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
# WHERE AVG(age) > 40 is not possible because after grouping happens then we get the AVG
GROUP BY gender
HAVING AVG(age) > 40
;





SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) < 60000
;