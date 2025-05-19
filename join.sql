

CREATE Table "newuser"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table newpost(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "newuser"(id)
)



INSERT INTO "newuser" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO newpost (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);



select title,username FROM newpost
join "newuser" on newpost.user_id="newuser".id

select p.id FROM newpost as p
join newuser on p.user_id="newuser".id

DROP Table post;
DROP Table "user";

SELECT * from "user";
SELECT * from post;

SELECT * FROM post as p
JOIN "user" u on p.user_id = u.id;



INSERT INTO post (id, title, user_id) VALUES
(5,'this is a test post title', NULL);


SELECT * FROM post as p
LEFt OUTER JOIN "user" u on p.user_id = u.id;


SELECT * FROM post as p
RIGHT OUTER JOIN "user" u on p.user_id = u.id;



SELECT * FROM newpost as p
FULL OUTER JOIN newuser u on p.user_id = u.id;

DROP Table newpost

DROP Table newuser

SELECT * from newpost

SELECT * FROM newuser