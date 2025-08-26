-- Creating a new table in our database
CREATE TABLE bands(
-- columnName dataType constraint
	band_id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	genre VARCHAR(255)
);


-- Query a table
SELECT * FROM bands;

-- Query specific columns from the table
SELECT band_id, name from bands;


-- WHERE clause with SELECT
SELECT * FROM bands
WHERE genre='Rock';


-- Delete a table
DROP TABLE bands;


-- Add a row to the table
INSERT INTO bands(genre)
VALUES('Rock');


-- Inserting Multiple Values into the Table
INSERT INTO bands(name,genre)
VALUES
	('Metalica','Rock'),
	('Maroon 5','Pop');


-- Deleting from a table
-- BE CAREFUL: Always have a WHERE clause when deleting
DELETE FROM bands
WHERE band_id=3;



-- Updating a row in the table
UPDATE bands
SET genre='Arabic'
WHERE band_id = 1;


-- ORDER the results
SELECT * FROM bands
ORDER BY name;

-- Reverse Order
SELECT * FROM bands
ORDER BY name DESC;


-- AND clause
SELECT * FROM bands
WHERE name = 'The Beatles' AND genre='Rock';

-- OR clause
SELECT * FROM bands
WHERE name = 'The Beatles' OR genre='rock';


-- ILIKE: case insensitive search
-- LIKE: case sensitive search
-- '%ro%': any genre that has ro in it will be returned
SELECT * FROM bands
WHERE genre ILIKE '%ro%';