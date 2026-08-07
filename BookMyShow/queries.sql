/*
====================================================
        BookMyShow Database - SQL Queries
        Database : BookMyShow
====================================================
*/

USE BookMyShow;
GO

/*==================================================
                BASIC SELECT QUERIES
==================================================*/

-- 1. Display all users
SELECT * FROM Users;

-- 2. Display all movies
SELECT * FROM Movies;

-- 3. Display all theaters
SELECT * FROM Theater;

-- 4. Display all events
SELECT * FROM Event;

-- 5. Display all payment details
SELECT * FROM Payment;


/*==================================================
                WHERE CLAUSE
==================================================*/

-- 6. Display all Telugu movies
SELECT *
FROM Movies
WHERE Language = 'Telugu';

-- 7. Display movies with rating greater than 4
SELECT *
FROM Movies
WHERE Rating > 4;

-- 8. Display users above 30 years
SELECT *
FROM Users
WHERE Age > 30;

-- 9. Display theaters located in Mumbai
SELECT *
FROM Theater
WHERE City = 'Mumbai';

-- 10. Display events in Chennai
SELECT *
FROM Event
WHERE Location = 'Chennai';

/*==================================================
                UPDATE
==================================================*/

-- 11. Update movie rating
UPDATE Movies
SET Rating = 5
WHERE Movie_ID = 15;

-- 12. Update event location
UPDATE Event
SET Location = 'Hyderabad'
WHERE Event_ID = 64;


/*==================================================
                DELETE
==================================================*/

-- 13. Delete an event
DELETE FROM Event
WHERE Event_ID = 95;
