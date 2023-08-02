DROP DATABASE IF EXISTS  adopt;

CREATE DATABASE adopt;

\c adopt

CREATE TABLE pets
(
  id SERIAL PRIMARY KEY,
  pet_name TEXT NOT NULL,
  species TEXT NOT NULL,
  photo_url TEXT,
  pet_age INT,
  notes TEXT,
  pet_available BOOLEAN NOT NULL DEFAULT TRUE
);

INSERT INTO pets
  (pet_name, species, photo_url, pet_age, notes, pet_available)
VALUES
  ('Dog', 'dog', 'null', 3, 'Fluffly', 't'),
  ('Animal', 'snake', 'null', 4, 'can bite', 't'),
  ('Cat', 'cat', 'null', 6, 'likes to cuddle' 't'),
  ('Mr.Cat', 'cat', null, 1, null, 't');
