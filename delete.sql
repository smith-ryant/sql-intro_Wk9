-- INSERT INTO animals ( name, type, age ) 
-- VALUES ('Leo', 'lion', 12),
-- ('Jerry', 'mouse', 4),
-- ('Marty', 'zebra', 10),
-- ('Gloria', 'hippo', 8),
-- ('Alex', 'lion', 9),
-- ('Melman', 'giraffe', 15),
-- ('Nala', 'lion', 2),
-- ('Marie', 'cat', 1),
-- ('Flounder', 'fish', 8);

-- Create a table called animals
CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  age INT
);

-- Insert data into the animals table
INSERT INTO animals (name, type, age) 
VALUES ('Leo', 'lion', 12),
('Jerry', 'mouse', 4),
('Marty', 'zebra', 10),
('Gloria', 'hippo', 8),
('Alex', 'lion', 9),
('Melman', 'giraffe', 15),
('Nala', 'lion', 2),
('Marie', 'cat', 1),
('Flounder', 'fish', 8);

-- Select from animals to confirm that everything worked
SELECT * FROM animals;

-- Delete all ‘lion’ entries from the table
DELETE FROM animals WHERE type = 'lion';

-- Delete all animals whose names start with “M”
DELETE FROM animals WHERE name LIKE 'M%';

-- Delete all entries whose age is less than 9
DELETE FROM animals WHERE age < 9;