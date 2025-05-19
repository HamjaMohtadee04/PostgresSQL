SHOW timezone;

SELECT now()

CREATE Table timeZ(ts TIMESTAMP without time zone,tsz TIMESTAMP with time zone)

insert INTO timeZ VALUES('2025-01-12 10:45:00','2025-01-12 10:45:00')

SELECT * FROM timeZ

SELECT CURRENT_DATE

SELECT now()::date

SELECT now():: TIME;

SELECT to_Char(now(),'yyyy/mm/dd')

SELECT to_Char(now(),'dd/mm/yyyy')

--google search for more
SELECT to_Char(now(),'Month')

SELECT CURRENT_DATE - INTERVAL '1 year'

SELECT CURRENT_DATE - INTERVAL '1 year 2 month'

SELECT CURRENT_DATE - INTERVAL '1 month'

SELECT age(CURRENT_DATE,'2001-05-11')

SELECT *, age(CURRENT_DATE,dob) FROM students

SELECT extract(year from '2025-01-25'::date)

SELECT extract(month from '2025-01-25'::date)

SELECT 1::BOOLEAN