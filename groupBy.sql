SELECT * FROM students

select country from students
GROUP BY country

select country, count(*),avg(age) from students
GROUP BY country


select country,avg(age) from students
GROUP BY country
HAVING avg(age)>20


select * FROM students

--count students born in each year
SELECT extract(year from dob) as students_birth_year, count(*)
from students
GROUP BY students_birth_year






