-- Creating a new table in our database
CREATE TABLE bands(
-- columnName dataType constraint
	band_id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	genre VARCHAR(255)
);


-- Query a table
SELECT * FROM bands;


-- Delete a table
DROP TABLE bands;


-- Add a row to the table
INSERT INTO bands(name,genre)
VALUES('The Beatles','Rock');


-- Inserting Multiple Values into the Table
INSERT INTO bands(name,genre)
VALUES
	('Metalica','Rock'),
	('Maroon 5','Pop');
	
