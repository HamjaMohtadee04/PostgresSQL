CREATE table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    -- user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
    -- user_id INTEGER REFERENCES "user"(id) ON DELETE SET NULL
    user_id INTEGER REFERENCES "user"(id)  ON DELETE SET DEFAULT DEFAULT 2
)

ALTER Table post 
alter COLUMN user_id set not NULL


INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

SELECT * FROM "user"

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);

SELECT * FROM post



-- Insertion constraint on INSERT post
-- Attempting to insert a post with a user ID that does not exist
-- Inserting a post with a valid user ID
-- Attempting to insert a post without specifying a user ID
INSERT INTO post(title,user_id) VALUES('test',1)

-- INSERT INTO post (title, user_id) VALUES('test', NULL)



-- Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT

DELETE from "user"
where id=4

DROP TABLE post

DROP TABLE "user"

