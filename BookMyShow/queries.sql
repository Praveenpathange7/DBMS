/*
====================================================
        BookMyShow Database - SQL Queries
        Database : BookMyShow
====================================================
*/
-- 1. Display all users.
SELECT * FROM Users;

-- 2. Display all movies.
SELECT * FROM Movies;

-- 3. Display all theaters.
SELECT * FROM Theater;

-- 4. Display all events.
SELECT * FROM Event;

-- 5. Display all payment details.
SELECT * FROM Payment;

-- 6. Display all Telugu movies.
SELECT *
FROM Movies
WHERE Language = 'Telugu';

-- 7. Display movies with rating greater than 4.
SELECT *
FROM Movies
WHERE Rating > 4;

-- 8. Display users above 30 years.
SELECT *
FROM Users
WHERE Age > 30;

-- 9. Display theaters located in Mumbai.
SELECT *
FROM Theater
WHERE City = 'Mumbai';

-- 10. Display events in Chennai.
SELECT *
FROM Event
WHERE Location = 'Chennai';

-- 11. Update the rating of the movie with Movie_ID 15 to 5.
UPDATE Movies
SET Rating = 5
WHERE Movie_ID = 15;

-- 12. Update the location of the event with Event_ID 64 to Hyderabad.
UPDATE Event
SET Location = 'Hyderabad'
WHERE Event_ID = 64;

-- 13. Delete the event with Event_ID 95.
DELETE FROM Event
WHERE Event_ID = 95;

-- 14. Display the records satisfying the given condition.
SELECT Name FROM users
WHERE city = 'Tirupati'

-- 15. Display the records satisfying the given condition.
SELECT Name,Phone_No FROM Users
WHERE city = 'Hyderabad'

-- 16. Display the records satisfying the given condition.
SELECT * FROM Movies
WHERE Language = 'Telugu'

-- 17. Display the records satisfying the given condition.
SELECT M_Name,Genre FROM Movies
WHERE Genre = 'Action'

-- 18. Display the records satisfying the given condition.
SELECT M_Name FROM Movies
WHERE Duration > 150

-- 19. Display the records satisfying the given condition.
SELECT * FROM Theater
WHERE Location = 'Tirupati'

-- 20. Display the records satisfying the given condition.
SELECT Theater_Name, Location FROM Theater
WHERE Screen > 3

-- 21. Display the records satisfying the given condition.
SELECT * FROM Shows
WHERE Date = '2026-10-02'

-- 22. Display the records satisfying the given condition.
SELECT * FROM Booking
WHERE Seats > 2

-- 23. Display the records satisfying the given condition.
SELECT B_Id, User_Id, Seats FROM Booking
WHERE Booking_Date > '2026-09-01'

-- 24. Display the records satisfying the given condition.
SELECT * FROM Payment
WHERE Amount > 500

-- 25. Display the records satisfying the given condition.
SELECT P_Id, B_ID, P_Type FROM Payment
WHERE P_Type = 'UPI'

-- 26. Display the records satisfying the given condition.
SELECT * FROM Payment
WHERE P_Status = 'Success'

-- 27. Display the records satisfying the given condition.
SELECT Name, Email FROM Users
WHERE city = 'Tirupati'
OR city = 'Chennai'

-- 28. Display the records satisfying the given condition.
SELECT M_Name FROM Movies
WHERE Language = 'Telugu'
AND Genre = 'Action'

-- 29. Display the records satisfying the given condition.
SELECT M_Name FROM Movies
WHERE Duration > 120
AND Duration < 180

-- 30. Display the records satisfying the given condition.
SELECT * FROM Users
WHERE city = 'Tirupati' AND email is NOT NULL

-- 31. Display the records satisfying the given condition.
SELECT * FROM Theater
WHERE Location = 'Tirupati'
OR City = 'HYD'

-- 32. Display the records satisfying the given condition.
SELECT Theater_Name FROM Theater
WHERE Screen > 2
AND Location = 'Tirupati'

-- 33. Display the records satisfying the given condition.
SELECT * FROM Booking
WHERE Seats >= 2
AND Seats <= 5

-- 34. Display the records satisfying the given condition.
SELECT B_Id, User_Id FROM Booking
WHERE Booking_Date = '2026-09-01' OR Seats > 4

-- 35. Display the records satisfying the given condition.
SELECT * FROM Payment
WHERE Amount > 500 AND P_Status = 'Success'

-- 36. Display the records satisfying the given condition.
SELECT P_Id, Amount, P_Type FROM Payment
WHERE P_Type = 'UPI' OR P_Type = 'Credit'

-- 37. Display the records satisfying the given condition.
SELECT Name FROM Users
WHERE (city = 'Tirupati' OR city = 'Hyderabad')
AND Phone_No IS NOT NULL

-- 38. Display the records satisfying the given condition.
SELECT User_Id, Name FROM Users
WHERE city = 'Tirupati'

-- 39. Display the records satisfying the given condition.
SELECT User_Id, Name FROM Users
WHERE city = 'Tirupati'

-- 40. Display the records satisfying the given condition.
SELECT Theater_Name, City, Screen FROM Theater
WHERE Screen > 3

-- 41. Display the records satisfying the given condition.
SELECT P_Id, Amount, P_Status FROM Payment
WHERE Amount > 500

-- 42. Display the requested details by joining the specified tables.
SELECT U.Name, B.B_Id FROM Users U
INNER JOIN Booking B
ON U.User_Id = B.User_Id

-- 43. Display the requested details by joining the specified tables.
SELECT U.Name, U.Phone_No, B.Seats FROM Users U
INNER JOIN Booking B
ON U.User_Id = B.User_Id

-- 44. Display the requested details by joining the specified tables.
SELECT U.Name,U.phone_no,B.seats From USERS U
INNER JOIN Booking B
ON U.user_id = B.User_id

-- 45. Display the requested details by joining the specified tables.
SELECT M.M_Name, M.Language, S.Date FROM Movies M
INNER JOIN Shows S
ON M.M_Id = S.M_Id

-- 46. Display the requested details by joining the specified tables.
SELECT T.Theater_Name, T.City, S.Date
FROM Theater T
INNER JOIN Shows S
ON T.Theater_Id = S.T_Id

-- 47. Update the specified records according to the given condition.
UPDATE Users
SET city = 'Chittoor'
WHERE User_Id = 104 AND city = 'Tirupati';

-- 48. Update the specified records according to the given condition.
UPDATE Movies
SET Genre = 'Action'
WHERE M_Id = 126

-- 49. Update the specified records according to the given condition.
UPDATE Theater
SET Screen = Screen + 1
WHERE Theater_Id = 133

-- 50. Update the specified records according to the given condition.
UPDATE Payment
SET P_Status = 'Success'
WHERE P_Id = 181

-- 51. Update the specified records according to the given condition.
UPDATE Payment
SET P_Type = 'UPI'
WHERE P_Status = 'Pending'
AND Amount < 500

-- 52. Delete the specified records according to the given condition.
DELETE FROM Users
WHERE User_Id = 110

-- 53. Delete the specified records according to the given condition.
DELETE FROM Movies
WHERE Duration < 90

-- 54. Delete the specified records according to the given condition.
DELETE FROM Theater
WHERE Screen < 2
AND City = 'Chennai'

-- 55. Delete the specified records according to the given condition.
DELETE FROM Booking
WHERE Seats = 1
AND Booking_Date < '2026-09-01'

-- 56. Delete the specified records according to the given condition.
DELETE FROM Payment
WHERE P_Status = 'Failed'
AND Amount < 300

-- 57. Delete the specified records according to the given condition.
DELETE FROM Payment
WHERE P_Status = 'Failed'
AND Amount < 300

-- 58. Update the specified records according to the given condition.
UPDATE Theater
SET Screen = Screen + 1
WHERE Screen < 3

-- 59. Update the specified records according to the given condition.
UPDATE Theater
SET City = 'Tirupati'
WHERE City = 'Chittoor'
AND Screen >= 3

-- 60. Update the specified records according to the given condition.
UPDATE Movies
SET Language = 'Telugu'
WHERE Language = 'English'
AND Genre = 'Drama'

-- 61. Update the specified records according to the given condition.
UPDATE Movies
SET Genre = 'Action'
WHERE Language = 'Telugu'
AND Duration > 120

-- 62. Update the specified records according to the given condition.
UPDATE Booking
SET Seats = Seats + 1
WHERE Seats < 3

-- 63. Update the specified records according to the given condition.
UPDATE Booking
SET Booking_Date = '2026-09-20'
WHERE Seats > 4
AND Booking_Date < '2026-09-20'

-- 64. Update the specified records according to the given condition.
UPDATE Payment
SET P_Type = 'UPI'
WHERE P_Type = 'Cash'

-- 65. Update the specified records according to the given condition.
UPDATE Payment
SET P_Status = 'Success'
WHERE Amount > 500 AND P_Status = 'Pending';

-- 66. Update the specified records according to the given condition.
UPDATE Payment
SET P_Status = 'Failed'
WHERE Amount < 100 AND P_Status = 'Pending'

-- 67. Update the specified records according to the given condition.
UPDATE Payment
SET P_Status = 'Failed'
WHERE Amount < 100 AND P_Status = 'Pending'

-- 68. Delete the specified records according to the given condition.
DELETE FROM Users
WHERE city = 'Tirupati'
AND Email is NOT NULL

-- 69. Delete the specified records according to the given condition.
DELETE FROM Movies
WHERE Language = 'English'
AND Duration > 180

-- 70. Delete the specified records according to the given condition.
DELETE FROM Theater
WHERE (City = 'HYD'
OR City = 'Chennai')
AND Screen < 3

-- 71. Delete the specified records according to the given condition.
DELETE FROM Booking
WHERE Seats > 4
AND Booking_Date < '2026-09-20'

-- 72. Delete the specified records according to the given condition.
DELETE FROM Payment
WHERE Amount > 1000
AND P_Status = 'Failed'

-- 73. Display the count of users.
SELECT COUNT(User_Id) as count FROM USERS
WHERE city = 'Tirupati' and Email is NOT NULL

-- 74. Display the count of users.
SELECT COUNT(User_Id) as count FROM USERS
WHERE city = 'Hyderabad' or city = 'Chennai'

-- 75. Display the count of records matching the given condition.
SELECT COUNT(M_Id) as count FROM Movies 
WHERE Language = 'Telugu' and Genre = 'Action'

-- 76. Display the count of records matching the given condition.
SELECT COUNT(M_Id) as count FROM Movies 
WHERE duration > 120 and duration < 180

-- 77. Display the count of records matching the given condition.
SELECT COUNT(Theater_Id) as count FROM Theater
WHERE Location = 'Tirupati' and Screen > 3

-- 78. Display the count of records matching the given condition.
SELECT COUNT(B_Id) as count FROM Booking
WHERE  seats >= 3 and seats <= 5

-- 79. Display the minimum value matching the given condition.
SELECT MIN(Duration) as Min_Duration FROM Movies
WHERE Language = 'Telugu' and Genre = 'Action'

-- 80. Display the maximum value matching the given condition.
SELECT MAX(Duration) as Max_Duration FROM Movies
WHERE Language = 'English' OR Language = 'Hindi'

-- 81. Display the average value matching the given condition.
SELECT AVG(Duration) FROM Movies
WHERE Duration > 120 AND Duration < 180

-- 82. Display the minimum value matching the given condition.
SELECT MIN(screen) FROM Theater
WHERE city = 'Tirupati' and screen > 2

-- 83. Display the minimum value matching the given condition.
SELECT MIN(screen) FROM Theater
WHERE city = 'Tirupati' or City = 'HYD'

-- 84. Display the average value matching the given condition.
SELECT AVG(screen) FROM Theater
WHERE city = 'Tirupati' and screen >= 3

-- 85. Display the minimum value matching the given condition.
SELECT MIN(seats) as Min_Seats FROM Booking
WHERE seats > 1 and seats < 5

-- 86. Execute the given SQL query. 
SELECT MAX(seats) as Max_Seats FROM Booking
WHERE seats > 2 and Booking_Date > '2026-09-09'

-- 87. Display the average value matching the given condition.
SELECT AVG(amount) as Avg_amount FROM Payment 
WHERE P_Status = 'Success' and amount > 500

-- 88. Display the total amount matching the given condition.
SELECT SUM(amount) as Total_amount FROM Payment 
WHERE P_Status = 'Success' and amount > 500

-- 89. Display the total amount matching the given condition.
SELECT SUM(amount) as Total_amount FROM Payment 
WHERE P_Type = 'UPI' and amount > 300

-- 90. Display the total amount matching the given condition.
SELECT SUM(amount) as Total_amount FROM Payment 
WHERE P_Type = 'UPI' and P_status = 'Sucess' AND amount > 300

-- 91. Display the records satisfying the given condition.
SELECT Distinct city FROM Theater 
WHERE screen > 2 and screen < 6

-- 92. Display the records satisfying the given condition.
SELECT Distinct p_status FROM Payment 
WHERE P_Type = 'UPI' OR P_Type = 'Credit Card'

-- 93. Display the records satisfying the given condition.
select Name from users 
WHERE Name = 'A%' and city = 'Tirupati'

-- 94. Display the records satisfying the given condition.
SELECT NAME FROM USERS
WHERE (NAME LIKE 'R%' OR Name LIKE 'S%') AND city = 'HYD'

-- 95. Display the records satisfying the given condition.
SELECT NAME FROM USERS
WHERE NAME IS NOT NULL AND EMAIL LIKE '%@gmail.com'

-- 96. Display the records satisfying the given condition.
SELECT M_Name FROM Movies
WHERE M_NAME LIKE 'S%' AND Language = 'Telugu'

-- 97. Display the average value matching the given condition.
SELECT Language, AVG(Duration) AS Avg_Duration FROM Movies
WHERE Duration > 100
GROUP BY Language

-- 98. Display the count of records matching the given condition.
SELECT City, COUNT(Theater_Id) AS No_Of_Theatres FROM Theater
WHERE Screen >= 3
GROUP BY City

-- 99. Display the average value matching the given condition.
SELECT City, AVG(Screen) AS Avg_screens FROM Theater
WHERE Screen > 2
GROUP BY City

-- 100. Display the total amount matching the given condition.
SELECT P_Type, SUM(Amount) AS Total_Amount FROM Payment
WHERE P_Status = 'Success'
GROUP BY P_Type

-- 101. Display the count of users.
SELECT city, COUNT(User_Id) AS No_of_users FROM Users
GROUP BY city
HAVING COUNT(User_Id) > 2

-- 102. Display the count of records matching the given condition.
SELECT Language, COUNT(M_Id) AS No_of_Movies FROM Movies
GROUP BY Language
HAVING COUNT(M_Id) > 3

-- 103. Display the count of records matching the given condition.
SELECT Genre, AVG(Duration) AS Avg_Duration FROM Movies
GROUP BY Genre
HAVING AVG(Duration) > 120
-- 103
SELECT City, COUNT(Theater_Id) AS No_of_Theatres FROM Theater
GROUP BY City
HAVING COUNT(Theater_Id) >= 2

-- 104. Display the total amount matching the given condition.
SELECT P_Type, SUM(Amount) AS Total_Amount FROM Payment
GROUP BY P_Type
HAVING SUM(Amount) > 1000

-- 105. Display the count of records matching the given condition.
SELECT Genre, COUNT(M_Id) AS No_of_Movies FROM Movies
WHERE Language = 'Telugu'
GROUP BY Genre
HAVING COUNT(M_Id) > 2

-- 106. Execute the given SQL query.
SELECT P_Type, AVG(Amount) AS Average_Amount FROM Payment
WHERE P_Status = 'Success'
GROUP BY P_Type
HAVING AVG(Amount) > 2500

-- 107. Display the count of records matching the given condition.
SELECT Genre, COUNT(M_Id) AS No_of_Movies FROM Movies
GROUP BY Genre
ORDER BY No_of_Movies DESC

-- 108. Display the average value matching the given condition.
SELECT Language, AVG(Duration) AS Avg_Duration FROM Movies
GROUP BY Language
ORDER BY Avg_Duration

-- 109. Display the total amount matching the given condition.
SELECT P_Type, SUM(Amount) AS Total FROM Payment
WHERE P_Status = 'Success' AND Amount > 2300
GROUP BY P_Type
HAVING SUM(Amount) > 1000
ORDER BY Total DESC

-- 110. Display the maximum value matching the given condition.
SELECT * FROM Movies
WHERE Duration = (SELECT MAX(Duration) FROM Movies)

-- 111. Display the minimum value matching the given condition.
SELECT * FROM Movies
WHERE Duration = (SELECT MIN(Duration) FROM Movies)

-- 112. Display the maximum value matching the given condition.
SELECT * FROM Theater
WHERE Screen = (SELECT MAX(Screen) FROM Theater)

-- 113. Display the minimum value matching the given condition.
SELECT * FROM Theater
WHERE Screen = (SELECT MIN(Screen) FROM Theater)

-- 114. Display the maximum value matching the given condition.
SELECT * FROM Booking
WHERE Seats = (SELECT MAX(seats) FROM Booking)

-- 115. Display the minimum value matching the given condition.
SELECT * FROM Booking
WHERE Seats = (SELECT MIN(seats) FROM Booking)

-- 116. Display the maximum value matching the given condition.
SELECT * FROM Payment
WHERE Amount = (SELECT MAX(Amount) FROM Payment)

-- 117. Display the minimum value matching the given condition.
SELECT * FROM Payment
WHERE Amount = (SELECT MIN(Amount) FROM Payment)

-- 118. Display the average value matching the given condition.
SELECT M_Name FROM Movies
WHERE Duration > (SELECT AVG(Duration) FROM Movies)

-- 119. Display the average value matching the given condition.
SELECT Theater_Name FROM Theater
WHERE Screen > (SELECT AVG(Screen) FROM Theater)

-- 120. Display the records satisfying the given subquery condition.
SELECT M_Name FROM Movies
WHERE Duration > (SELECT Duration FROM Movies WHERE M_Id = 205)

-- 121. Display the records satisfying the given subquery condition.
SELECT Theater_Name FROM Theater
WHERE Screen > (SELECT Screen FROM Theater WHERE Theater_Id = 102)

-- 122. Display the records satisfying the given subquery condition.
SELECT Name FROM Users
WHERE City = (SELECT City FROM users WHERE user_Id = 105)

-- 123. Display the records satisfying the given condition.
SELECT * FROM Booking
WHERE Seats > ( SELECT Seats FROM Booking WHERE B_Id = 305)

-- 124. Display the records satisfying the given condition.
SELECT * FROM Payment
WHERE Amount > ( SELECT Amount FROM Payment WHERE P_Id = 405)

-- 125. Display the average value matching the given condition.
SELECT M_Name FROM Movies
where Duration = (SELECT AVG(Duration) FROM Movies)

-- 126. Display the average value matching the given condition.
SELECT Theater_Name,screen FROM Theater
WHERE Screen < (SELECT AVG(Screen) FROM Theater)

-- 127. Display the records satisfying the given subquery condition.
SELECT Name FROM Users
WHERE user_Id IN (SELECT User_Id FROM Booking)

-- 128. Display the records satisfying the given subquery condition.
SELECT M_Name FROM Movies
WHERE M_Id IN (SELECT M_Id FROM Shows)

-- 129. Display the records satisfying the given subquery condition.
SELECT Theater_Name FROM Theater
WHERE Theater_Id IN (SELECT Theater_Id FROM Shows)

-- 130. Display the records satisfying the given subquery condition.
SELECT Name FROM Users
WHERE user_Id NOT IN (SELECT user_Id FROM Booking);

-- 131. Display the average value matching the given condition.
SELECT M_Name FROM Movies
WHERE Duration > (SELECT AVG(Duration) FROM Movies) AND Language = 'Telugu'

-- 132. Display the average value matching the given condition.
SELECT Theater_Name FROM Theater
WHERE Screen > (SELECT AVG(Screen) FROM Theater) AND City = 'Tirupati'

-- 133. Display the average value matching the given condition.
SELECT * FROM Payment
WHERE Amount > ( SELECT AVG(Amount) FROM Payment ) AND P_Status = 'Success'

-- 134. Display the records satisfying the given subquery condition.
SELECT Name FROM users
WHERE User_Id IN (SELECT User_Id FROM Booking WHERE Seats > 2)

-- 135. Execute the given SQL query.
SELECT M_Name From Movies M
WHERE Duration > (SELECT AVG(Duration) FROM Movies where Language = M.Language)

-- 136. Display the average value matching the given condition.
SELECT Theater_Name FROM Theater T
WHERE screen > (SELECT AVG(Screen) FROM Theater where city = T.city)

-- 137. Execute the given SQL query.
SELECT * FROM Payment P
WHERE Amount > (SELECT AVG(Amount) FROM Payment WHERE P_Type = P.P_Type)

-- 138. Display the average value matching the given condition.
SELECT M_Name FROM Movies M
Where Duration > (SELECT AVG(Duration) FROM Movies where Genre = M.Genre)
