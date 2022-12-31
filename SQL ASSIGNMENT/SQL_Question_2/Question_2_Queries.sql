-- Question 2 - 
-- Write the queries for the following tasks - 
-- Create a database name - “Football”.
-- Create a table name - “Football Venue”.
-- Insert 10 details in the “Football Venue” table  - 
-- venue_id
-- venue_name
-- city_id
-- capacity
-- Sample Output - 
--  venue_id |       venue_name        | city_id | capacity
-- -------------+-----------------------------+----------+----------
--     20001 |             France               |   10003 |  42115
--   4. Count the number of venues of the football world cup
--   5. List all the venue names and capacities in the format of “Location” and “Volume”.
-- Sample Output - 
--   Location        | Volume
-- ------------------+----------
--     Argentina   |   100034
--    Spain           |   272726


--Querie1
CREATE DATABASE Football;
--Querie2
CREATE TABLE Football_Venue(
	Venue_id INT NOT NULL PRIMARY KEY,
    Venue_name VARCHAR(50) NOT NULL,
    City_id INT NOT NULL,
    Capacity INT NOT NULL
);
--Querie3
INSERT INTO Football_Venue(Venue_id,Venue_name,City_id,Capacity) 
VALUES(20001,"France",10000,42115),(20002,"Germany",10001,56985),(20003,"South Africa",10002,26589),
(20004,"Portugal",10003,96589),(20005,"Mexico",10004,23654),(20006,"England",10005,23574),
(20007,"Italy",10006,20360),(20008,"Scotland",10007,12580),(20009,"Spain",10008,96850),
(20010,"Argentenia",10009,96231);
--Querie4
SELECT COUNT(Venue_name) FROM Football_Venue
--Querie5
ALTER TABLE Football_Venue RENAME COLUMN Venue_name TO Location;
ALTER TABLE FOOTBALL_VENUE RENAME COLUMN Capacity TO Volume;
