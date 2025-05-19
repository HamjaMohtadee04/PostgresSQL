-- Active: 1747502490894@@127.0.0.1@5432@test_db
-- INSERT INTO person3(person_id,name,age)
--   VALUES(1,'NAFI',24)
SELECT * FROM person3;
ALTER Table person3
 ADD COLUMN email VARCHAR(30) DEFAULT 'default@mail.com' NOT NULL;

-- ALTER TABLE PERSON3
-- DROP COLUMN EMAIL;

ALTER TABLE PERSON3
RENAME COLUMN AGE TO USER_AGE 

-- UNIQUE
ALTER table person3
ADD constraint unique_person3_user_age UNIQUE(user_age)

alter Table person3
DROP constraint unique_person3_user_age;

-- TRUNCATE TABLE person2;
 