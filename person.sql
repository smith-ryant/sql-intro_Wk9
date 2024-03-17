-- Create a table called 'person' with columns: id, name, age, height, city, favorite_color
CREATE TABLE person(
  id SERIAL PRIMARY KEY,
  name VARCHAR(40) NOT NULL,
  age INTEGER NOT NULL, 
  height INTEGER NOT NULL,
  city VARCHAR(50),
  favorite_color VARCHAR(20)
);

-- Insert data into the 'person' table
INSERT INTO person(name, age, height, city, favorite_color)
VALUES ('Penny', 74, 65, 'twin_falls', 'blue'),
     ('Dewey', 56, 69, 'filer', 'green'),
     ('Torey', 38, 68, 'buhl', 'pink'),
     ('Eddy', 53, 72, 'twin_falls', 'black'),
     ('Lora', 47, 66, 'twin_falls', 'red');

-- Retrieve all rows from the 'person' table and order them by height in ascending order
SELECT *
FROM person
ORDER BY height;

-- Retrieve all rows from the 'person' table and order them by height in ascending order (explicit ASC keyword)
SELECT *
FROM person
ORDER BY height ASC;

-- Retrieve all rows from the 'person' table and order them by age in ascending order
SELECT *
FROM person
ORDER BY age;

-- Retrieve all rows from the 'person' table where age is greater than 20
SELECT *
FROM person
WHERE age > 20;

-- Retrieve all rows from the 'person' table where age is equal to 18
SELECT *
FROM person
WHERE age = 18;

-- Retrieve all rows from the 'person' table where age is less than 20 and greater than 30 (invalid condition)
SELECT *
FROM person
WHERE age < 20 AND > 30;

-- Retrieve all rows from the 'person' table where age is not equal to 27
SELECT *
FROM person
WHERE age != 27;

-- Retrieve all rows from the 'person' table where favorite_color is not equal to 'red'
SELECT *
FROM person
WHERE favorite_color != 'red';

-- Retrieve all rows from the 'person' table where favorite_color is not equal to 'red' and not equal to 'blue'
SELECT *
FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- Retrieve all rows from the 'person' table where favorite_color is equal to 'orange' or 'green'
SELECT *
FROM person
WHERE favorite_color IN ('orange', 'green');

-- Retrieve all rows from the 'person' table where favorite_color is equal to 'orange', 'green', or 'blue'
SELECT *
FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- Retrieve all rows from the 'person' table where favorite_color is equal to 'yellow' or 'purple'
SELECT *
FROM person
WHERE favorite_color IN ('yellow', 'purple');
