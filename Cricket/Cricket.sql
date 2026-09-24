CREATE DATABASE Cricket

CREATE TABLE Player(
Player_Id INT PRIMARY KEY,
Player_Name VARCHAR(50),
Age INT NOT NULL,
Gender VARCHAR(10),
Role VARCHAR(20) NOT NULL,
Country VARCHAR(20) NOT NULL
)

INSERT INTO Player VALUES
(101, 'MS Dhoni', 45, 'Male', 'Wicket-Keeper', 'India'),
(102, 'Ruturaj Gaikwad', 29, 'Male', 'Batsman', 'India'),
(103, 'Ravindra Jadeja', 37, 'Male', 'All-Rounder', 'India'),
(104, 'Jasprit Bumrah', 32, 'Male', 'Bowler', 'India'),
(105, 'Suryakumar Yadav', 36, 'Male', 'Batsman', 'India'),
(106, 'Glenn Maxwell', 38, 'Male', 'All-Rounder', 'Australia'),
(107, 'Rohit Sharma', 39, 'Male', 'Batsman', 'India'),
(108, 'Virat Kohli', 37, 'Male', 'Batsman', 'India'),
(109, 'Ben Stokes', 35, 'Male', 'All-Rounder', 'England'),
(110, 'Joe Root', 35, 'Male', 'Batsman', 'England')

CREATE TABLE Team(
Team_Id INT PRIMARY KEY,
Team_Name VARCHAR(20) NOT NULL,
Country VARCHAR(20) NOT NULL,
Coach VARCHAR(20) NOT NULL,
Ranking INT NOT NULL
)

INSERT INTO Team VALUES
(201, 'CSK', 'India', 'Stephen Fleming', 1),
(202, 'MI', 'India', 'Mark Boucher', 2),
(203, 'RCB', 'India', 'Andy Flower', 3),
(204, 'KKR', 'India', 'Chandrakant Pandit', 4),
(205, 'SRH', 'India', 'Daniel Vettori', 5),
(206, 'RR', 'India', 'Rahul Dravid', 6),
(207, 'Hobart Hurricanes', 'Australia', 'Jeff Vaughan', 16),
(208, 'PBKS', 'India', 'Ricky Ponting', 8),
(209, 'Adelaide Strikers', 'Australia', 'Tim Paine', 15),
(210, 'Sydney Sixers', 'Australia', 'Jeff Vaughan', 11)

CREATE TABLE Match(
Match_Id INT PRIMARY KEY,
Team1_Id INT  NOT NULL,
Team2_Id INT  NOT NULL,
Match_Date DATE NOT NULL,
Match_Type VARCHAR(20),
Venue VARCHAR(50) NOT NULL,
Winner_Id INT NOT NULL
)

INSERT INTO Match VALUES
(301, 201, 202, '2026-03-28', 'IPL', 'Wankhede Stadium', 202),
(302, 203, 204, '2026-03-29', 'IPL', 'M Chinnaswamy Stadium', 203),
(303, 205, 206, '2026-03-30', 'IPL', 'Rajiv Gandhi Stadium', 205),
(304, 206, 207, '2026-02-14', 'World Cup', 'R. Premadasa Stadium', 206),
(305, 209, 210, '2026-04-02', 'IPL', 'Narendra Modi Stadium', 209),
(306, 210, 202, '2026-01-10', 'T20', 'Sydney Cricket Ground', 210),
(307, 204, 201, '2026-01-11', 'T20', 'The Gabba', 201),
(308, 203, 205, '2026-02-12', 'World Cup', 'Eden Gardens', 203),
(309, 202, 208, '2026-06-05', 'T20', 'The Oval', 202),
(310, 208, 209, '2026-02-16', 'World Cup', 'Sharjah Cricket Stadium', 209)

CREATE TABLE Player_Performance(
Performace_Id INT PRIMARY KEY,
Match_Id INT NOT NULL FOREIGN KEY (Match_Id) REFERENCES Match (Match_Id),
Player_Id INT NOT NULL FOREIGN KEY (Player_Id) REFERENCES Player (Player_Id),
Runs INT NOT NULL,
Wickets INT NOT NULL,
Catches INT NOT NULL
)

INSERT INTO Player_Performance VALUES
(401, 301, 101, 35, 0, 2),
(402, 301, 107, 72, 0, 1),
(403, 301, 104, 12, 3, 1),
(404, 302, 108, 84, 0, 3),
(405, 302, 102, 46, 1, 2),
(406, 302, 106, 31, 0, 1),
(407, 303, 103, 18, 3, 0),
(408, 303, 110, 76, 0, 2),
(409, 303, 105, 52, 0, 1),
(410, 304, 109, 88, 0, 1)

CREATE TABLE Match_official(
Official_Id INT PRIMARY KEY,
Official_Name VARCHAR(50) NOT NULL,
Role VARCHAR(20) NOT NULL,
Country VARCHAR(20) NOT NULL,
Match_Id INT FOREIGN KEY (Match_Id) REFERENCES Match(Match_Id)
)

INSERT INTO Match_official VALUES
(501, 'Nitin Menon', 'Umpire', 'India', 301),
(502, 'Richard Kettleborough', 'Umpire', 'England', 302),
(503, 'Kumar Dharmasena', 'Umpire', 'Sri Lanka', 310),
(504, 'Chris Gaffaney', 'Umpire', 'New Zealand', 305),
(505, 'Rod Tucker', 'Umpire', 'Australia', 306),
(506, 'Marais Erasmus', 'Umpire', 'South Africa', 303),
(507, 'Aleem Dar', 'Umpire', 'Pakistan', 304),
(508, 'Joel Wilson', 'Umpire', 'West Indies', 308),
(509, 'Javagal Srinath', 'Umpire', 'India', 307),
(510, 'Jeff Crowe', 'Leg Umpire', 'New Zealand', 309)

CREATE TABLE Payment(
Payment_Id INT PRIMARY KEY,
Booking_Id INT UNIQUE NOT NULL,
Amount INT,
Payment_Mode VARCHAR(50) NOT NULL,
Payment_Status VARCHAR(20)
)

INSERT INTO Payment VALUES
(701, 601, 1200, 'UPI', 'Successful'),
(702, 602, 2500, 'Card', 'Successful'),
(703, 603, 1800, 'Net Banking', 'Successful'),
(704, 604, 950, 'UPI', 'Successful'),
(705, 605, 3200, 'Card', 'Failed'),
(706, 606, 1500, 'Cash', 'Successful'),
(707, 607, 2800, 'UPI', 'Successful'),
(708, 608, 2100, 'Card', 'Pending'),
(709, 609, 1750, 'Net Banking', 'Successful'),
(710, 610, 3600, 'UPI', 'Failed')
