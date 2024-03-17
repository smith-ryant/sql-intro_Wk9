-- Inserting three artists into the 'artist' table
INSERT INTO artist (artist_name) VALUES
('Artist A'),
('Artist B'),
('Artist C');

-- Retrieving the top 10 artists in descending order of their names
SELECT * FROM artist
ORDER BY artist_name DESC
LIMIT 10;

-- Retrieving the first 5 artists in ascending order of their names
SELECT * FROM artist
ORDER BY artist_name ASC
LIMIT 5;

-- Retrieving artists whose names start with 'Black'
SELECT * FROM artist
WHERE artist_name LIKE 'Black%';

-- Retrieving artists whose names contain 'Black'
SELECT * FROM artist
WHERE artist_name LIKE '%Black%';