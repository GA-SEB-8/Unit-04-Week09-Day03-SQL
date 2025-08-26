-- Creating a new table in our database
CREATE TABLE bands(
-- columnName dataType constraint
	band_id INTEGER,
	name VARCHAR(255),
	genre VARCHAR(255)
);


-- Query a table
SELECT * FROM bands;


-- Delete a table
DROP TABLE bands;
