
-- 1. Return ALL the data in the 'movies' table.

SELECT * FROM movies;

--  id |                title                | year | show_time 
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 15:40
--   2 | The Incredible Hulk                 | 2008 | 23:45
--   3 | Iron Man 2                          | 2010 | 17:45
--   4 | Thor                                | 2011 | 14:40
--   5 | Captain America: The First Avenger  | 2011 | 17:05
--   6 | Avengers Assemble                   | 2012 | 12:30
--   7 | Iron Man 3                          | 2013 | 18:00
--   8 | Thor: The Dark World                | 2013 | 18:55
--   9 | Batman Begins                       | 2005 | 16:30
--  10 | Captain America: The Winter Soldier | 2014 | 19:20
--  11 | Guardians of the Galaxy             | 2014 | 12:10
--  12 | Avengers: Age of Ultron             | 2015 | 23:40
--  13 | Ant-Man                             | 2015 | 18:20
--  14 | Captain America: Civil War          | 2016 | 22:00
--  15 | Doctor Strange                      | 2016 | 16:30
-- (15 rows)


-- 2. Return ONLY the name column from the 'people' table

SELECT name FROM people;

--        name       
-- ------------------
--  James Annal
--  Harrison Booth
--  Graeme Cameron
--  Sean Fealy
--  Julia Franzoi
--  Ben Frith
--  Andrew Guppy
--  Nina Kahr
--  Camden Lohman
--  Andrew Lonsdale
--  Rory MacDonald
--  Steven Noble
--  Amy Robinson
--  David Scott
--  Lorna Sherwood
--  Peter Trizuliak
--  Blaise Wielk
--  Kristie Yorkston
--  Craig Morton
-- (19 rows)

-- 3. Return ONLY your name from the 'people' table.

SELECT name FROM people WHERE name = 'Lorna Sherwood';

--       name      
-- ----------------
--  Lorna Sherwood
-- (1 row)

-- 4. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';

-- DELETE 1

-- 5. Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('Beth');

-- INSERT 0 1

-- 6. Craig Morton, has decided to hijack our movie evening, Remove him from the table of people

DELETE from people WHERE name = 'Craig Morton';

-- DELETE 1

-- 7. Somehow the list of people includes two people named 'Andrew'. Change one entry to 'Andy' and leave the other entry as 'Andrew'

UPDATE people SET name = 'Andy Guppy' WHERE name = 'Andrew Guppy';

-- UPDATE 1

-- 8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '12:00');

-- INSERT 0 1

-- 9. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 12:10 to 21:30

UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy';

-- 10. Research how to delete multiple entries from your table in a single command.

DELETE FROM movies where year in (2008, 2013);

DELETE FROM movies WHERE year between 2005 AND 2008;

DELETE FROM movies WHERE year >= 2005 AND year <= 2008;

-- UPDATE 1
-- DELETE 0
-- DELETE 0
-- DELETE 0
