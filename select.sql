CREATE Table students(
    stuent_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2),
    course VARCHAR(5),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

ALTER TABLE students
ALTER COLUMN first_name SET NOT NULL,
ALTER COLUMN last_name SET NOT NULL;

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('Hamja', 'Mamun', 22, 'A+', 'CSE01', 'hamja@example.com', '2002-05-10', 'O+', 'Bangladesh'),
('Sara', 'Rahman', 21, 'A', 'CSE02', 'sara@example.com', '2003-01-15', 'A-', 'Bangladesh'),
('Tariq', 'Hasan', 23, 'B+', 'CSE03', 'tariq@example.com', '2001-08-20', 'B+', 'Bangladesh'),
('Mira', 'Akter', 22, 'A-', 'CSE04', 'mira@example.com', '2002-11-05', 'AB+', 'Bangladesh'),
('Nabil', 'Islam', 24, 'B', 'CSE05', 'nabil@example.com', '2000-03-25', 'O-', 'Bangladesh'),
('Fahim', 'Khan', 23, 'A+', 'CSE06', 'fahim.k@example.com', '2001-07-12', 'A+', 'Bangladesh'),
('Rina', 'Sultana', 22, 'B-', 'CSE07', 'rina.s@example.com', '2002-02-18', 'B-', 'Bangladesh'),
('Imran', 'Ahmed', 21, 'C', 'CSE08', 'imran.a@example.com', '2003-04-23', 'AB-', 'Bangladesh'),
('Lamia', 'Begum', 23, 'A', 'CSE09', 'lamia.b@example.com', '2001-09-14', 'A+', 'Bangladesh'),
('Ovi', 'Chowdhury', 24, 'B+', 'CSE10', 'ovi.c@example.com', '2000-12-30', 'B+', 'Bangladesh'),
('Mehzab', 'Jahan', 22, 'A-', 'CSE11', 'mehzab.j@example.com', '2002-06-01', 'O+', 'Bangladesh'),
('Shuvo', 'Roy', 25, 'C+', 'CSE12', 'shuvo.r@example.com', '1999-10-10', 'B-', 'Bangladesh'),
('Jannat', 'Ferdous', 20, 'B', 'CSE13', 'jannat.f@example.com', '2004-03-05', 'A-', 'Bangladesh'),
('Adnan', 'Kabir', 23, 'A+', 'CSE14', 'adnan.k@example.com', '2001-11-20', 'O-', 'Bangladesh'),
('Farzana', 'Yesmin', 21, 'B-', 'CSE15', 'farzana.y@example.com', '2003-07-27', 'AB+', 'Bangladesh');

SELECT * FROM students

SELECT email,age,blood_group FROM students


SELECT email as "student Email" FROM students


SELECT * FROM students ORDER BY first_name ASC;
SELECT * FROM students ORDER BY age DESC;
SELECT * FROM students ORDER BY dob ASC;

UPDATE students SET country = 'India' WHERE stuent_id = 1;
UPDATE students SET country = 'USA' WHERE stuent_id = 2;
UPDATE students SET country = 'Canada' WHERE stuent_id = 3;
UPDATE students SET country = 'Germany' WHERE stuent_id = 4;
UPDATE students SET country = 'Australia' WHERE stuent_id = 5;
UPDATE students SET country = 'Japan' WHERE stuent_id = 6;
UPDATE students SET country = 'France' WHERE stuent_id = 7;
UPDATE students SET country = 'Brazil' WHERE stuent_id = 8;
UPDATE students SET country = 'South Korea' WHERE stuent_id = 9;
UPDATE students SET country = 'United Kingdom' WHERE stuent_id = 10;
UPDATE students SET country = 'Italy' WHERE stuent_id = 11;
UPDATE students SET country = 'Netherlands' WHERE stuent_id = 12;
UPDATE students SET country = 'Spain' WHERE stuent_id = 13;
UPDATE students SET country = 'Malaysia' WHERE stuent_id = 14;
UPDATE students SET country = 'Turkey' WHERE stuent_id = 15;

SELECT country from students

UPDATE students
SET country = CASE stuent_id
    WHEN 1 THEN 'India'
    WHEN 2 THEN 'USA'
    WHEN 3 THEN 'Canada'
    WHEN 4 THEN 'Germany'
    WHEN 5 THEN 'Australia'
    WHEN 6 THEN 'Japan'
    WHEN 7 THEN 'France'
    WHEN 8 THEN 'Brazil'
    WHEN 9 THEN 'South Korea'
    WHEN 10 THEN 'United Kingdom'
    WHEN 11 THEN 'Italy'
    WHEN 12 THEN 'Netherlands'
    WHEN 13 THEN 'Spain'
    WHEN 14 THEN 'Malaysia'
    WHEN 15 THEN 'Turkey'
    ELSE country
END
WHERE country = 'Bangladesh';

select DISTINCT country from students

select DISTINCT blood_group from students

-- data filtering

select * FROM students
WHERE country = 'USA'

select country from students

select * from students


SELECT * from students
WHERE grade ='A' AND course ='Physics'

SELECT * from students
WHERE country ='USA' OR country ='Australia'


SELECT * from students
WHERE age >20 and course ='History'


SELECT * from students
WHERE age <= 20 

SELECT * from students
WHERE age != 20 

SELECT * from students
WHERE country <> 'USA' 

--function
SELECT upper(first_name) as first_name_in_upper_case, * FROM students

SELECT concat(first_name, ' ' ,last_name)  FROM students



SELECT * from students
WHERE blood_group ='A+'


SELECT length(first_name) FROM students

--scalar
SELECT AVG(age) FROM students

SELECT max(age) FROM students

SELECT min(age) FROM students

SELECT count(*) FROM students




SELECT max(length(first_name)) FROM students


--null is special
SELECT NULL !=NULL


SELECT * FROM students

SELECT * FROM students
WHERE email = NULL

SELECT * FROM students
WHERE email IS NOT NULL


SELECT * FROM students

SELECT COALESCE(NULL,5)

SELECT COALESCE (email,'email not provided') FROM students

SELECT * FROM students WHERE country IN ('USA','UK','Canada')

SELECT * FROM students
 WHERE age BETWEEN 19 and 22

SELECT * FROM students
 WHERE age BETWEEN '2000-01-01' and '2005-01-01' ORDER BY dob


SELECT * FROM students
WHERE first_name LIKE '%a';
SELECT * FROM students
WHERE first_name LIKE 'A%';
SELECT * FROM students
WHERE first_name LIKE '___a';
SELECT * FROM students
WHERE first_name LIKE '___a_';

SELECT * FROM students
WHERE first_name ILIKE 'a%';


---limit and offset used in pagination

SELECT * FROM students LIMIT 5

SELECT * FROM students WHERE country IN ('USA','UK') LIMIT 5 

SELECT * FROM students LIMIT 5 OFFSET 2

SELECT * FROM students LIMIT 5 OFFSET 5 * 0

SELECT * FROM students LIMIT 5 OFFSET 5 * 1

SELECT * FROM students LIMIT 5 OFFSET 5 * 2


select * FROM students

-- --- delete command very dangerous command and also careful it can be delete a database or a table, also drop command 
-- DELETE FROM students

DELETE FROM students 
WHERE grade ='B'

DELETE FROM students 
WHERE grade ='C' AND country ='USA'

-- SELECT * FROM students be careful
-- UPDATE students 
-- set email = 'default@gmail.com'

SELECT * FROM students 

UPDATE students set email = 'default@gmail.com'
  WHERE stuent_id ='15'

UPDATE students set email = 'default@gmail.com',age =30,course ='phy'
  WHERE stuent_id ='15'

