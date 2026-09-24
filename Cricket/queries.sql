```sql
-- 1. Display the names and countries of players who are above 25 years old and are Batsmen.
SELECT Player_Name,Country FROM Player 
WHERE age > 25 AND Role = 'BatsMan'

-- 2. Display the names of players below 30 years old who are from India or Australia.
SELECT Player_Name FROM Player 
WHERE age < 30 AND Country = 'India' OR Country = 'Australia'

-- 3. Display the teams ranked 10 or higher that are from India.
SELECT * FROM Team
WHERE Ranking <= 10 and Country = 'India'

-- 4. Display the match ID, venue, and match type for T20 matches held at The Gabba.
SELECT Match_Id,Venue,Match_Type FROM Match
WHERE Match_Type = 'T20' and Venue = 'The Gabba'

-- 5. Display the player ID, runs, and wickets for players who scored more than 50 runs or took more than 2 wickets.
SELECT Player_Id,Runs,Wickets FROM Player_Performance
WHERE Runs > 50 OR Wickets > 2

-- 6. Display the distinct countries of the players.
SELECT DISTINCT Country FROM Player

-- 7. Display the distinct types of matches.
SELECT DISTINCT Match_Type FROM Match

-- 8. Display the names of players whose names start with 's' and who are from India.
SELECT Player_Name FROM Player
WHERE Player_Name like 's%' AND Country = 'India'

-- 9. Display the number of players from India.
SELECT COUNT(Player_Id) FROM Player
WHERE Country = 'India'

-- 10. Display the maximum runs scored in player performances.
SELECT MAX(Runs) as Max_Score FROM Player_Performance

-- 11. Display the average runs scored by players who scored more than 20 runs.
SELECT AVG(Runs) as Avg_Runs FROM Player_Performance
WHERE Runs > 20

-- 12. Display the total number of wickets taken by all players.
SELECT SUM(Wickets) as Total_Wickets FROM Player_Performance

-- 13. Display the minimum, maximum, and average number of catches.
SELECT MIN(Catches) as Min_Catches,MAX(Catches) as Max_Catches,AVG(Catches) as Avg_Catches FROM Player_Performance

-- 14. Display the number of players in each role who are above 25 years old.
SELECT Role,Count(Player_Id) as No_of_players FROM Player
WHERE age > 25
GROUP BY Role

-- 15. Display the number of bowlers from each country.
SELECT Country,Count(Player_Id) as No_of_players FROM Player
WHERE Role = 'Bowler'
GROUP BY Country

-- 16. Display the total runs for each player who scored more than 20 runs.
SELECT SUM(Runs) FROM Player_Performance
WHERE Runs > 20
GROUP BY Player_Id

-- 17. Display the total wickets taken in each match where wickets are greater than 0.
SELECT Match_Id, SUM(Wickets) AS Total_Wickets FROM Player_Performance 
WHERE Wickets > 0
GROUP BY Match_Id

-- 18. Display the countries having more than 2 players.
SELECT Country, COUNT(Player_Id) AS No_of_Players FROM Player
GROUP BY Country
HAVING COUNT(Player_Id) > 2

-- 19. Display players whose total runs are greater than 100.
SELECT Player_Id, SUM(Runs) AS Total_Runs FROM Player_Performance
GROUP BY Player_Id
HAVING SUM(Runs) > 100

-- 20. Display matches where the total wickets taken are greater than 3.
SELECT Match_Id, SUM(Wickets) AS Total_Wickets FROM Player_Performance
GROUP BY Match_Id
HAVING SUM(Wickets) > 3

-- 21. Display players whose total runs are greater than 100, ordered by total runs in descending order.
SELECT Player_Id, SUM(Runs) AS Total_Runs FROM Player_Performance
GROUP BY Player_Id
HAVING SUM(Runs) > 100
ORDER BY Total_Runs DESC

-- 22. Display players whose average runs are greater than 30, ordered by average runs.
SELECT Player_Id, AVG(Runs) AS Average_Runs FROM Player_Performance
GROUP BY Player_Id
HAVING AVG(Runs) > 30
ORDER BY Average_Runs

-- 23. Update the ranking of the team with Team_Id 201 to 1.
UPDATE Team
SET Ranking = 1
WHERE Team_Id = 201

-- 24. Increase the age of Batsmen above 30 by 1 year.
UPDATE Player
SET Age = Age + 1
WHERE Age > 30 AND Role = 'Batsman'

-- 25. Increase the catches by 1 for players who have more than 2 wickets and fewer than 3 catches.
UPDATE Player_Performance
SET Catches = Catches + 1
WHERE Wickets > 2 AND Catches < 3

-- 26. Delete players above 45 years old who are not from India.
DELETE FROM Player
WHERE Age > 45 AND Country != 'India'

-- 27. Delete player performance records where runs are less than 5 and wickets are 0.
DELETE FROM Player_Performance
WHERE Runs < 5 AND Wickets = 0

-- 28. Delete Indian teams whose ranking is greater than 15.
DELETE FROM Team
WHERE Ranking > 15 AND Country = 'India'

-- 29. Display player names, roles, and runs by joining Player and Player_Performance.
SELECT P.Player_Name, P.Role, PP.Runs FROM Player P
JOIN Player_Performance PP ON P.Player_Id = PP.Player_Id

-- 30. Display team names, match dates, and venues by joining Team and Match.
SELECT T.Team_Name, M.Match_Date, M.Venue FROM Team T
JOIN Match M ON T.Team_Id = M.Team1_Id

-- 31. Display player names, match IDs, runs, and wickets for players who scored more than 50 runs.
SELECT P.Player_Name, PP.Match_Id, PP.Runs, PP.Wickets FROM Player P
JOIN Player_Performance PP ON P.Player_Id = PP.Player_Id
WHERE PP.Runs > 50

-- 32. Display all player records.
SELECT * FROM Player

-- 33. Display all team records.
SELECT * FROM Team

-- 34. Display all match records.
SELECT * FROM Match

-- 35. Display all player performance records.
SELECT * FROM Player_Performance

-- 36. Display all match official records.
SELECT * FROM Match_official

-- 37. Display all payment records.
SELECT * FROM Payment
```
