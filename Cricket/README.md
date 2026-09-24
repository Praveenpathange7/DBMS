# Cricket Database Management System

## 📌 Project Overview

The **Cricket Database Management System** is a SQL-based database project designed to store and manage information related to cricket players, teams, matches, player performances, match officials, and payment records.

The project demonstrates the practical use of **SQL and DBMS concepts** such as:

* Database and table creation
* Primary keys and foreign keys
* Data insertion
* Data retrieval
* Filtering using `WHERE`
* Logical operators
* Pattern matching using `LIKE`
* Aggregate functions
* `GROUP BY` and `HAVING`
* `ORDER BY`
* `JOIN` operations
* Subqueries
* `UPDATE` operations
* `DELETE` operations
* `DISTINCT` values

---

## 🎯 Aim of the Project

The main aim of this project is to create a structured database for managing cricket-related information and to demonstrate how SQL can be used to store, retrieve, update, and analyze cricket data efficiently.

---

## 🌍 Real-World Use

A database system like this can be used by:

* Cricket organizations
* Sports management companies
* Cricket academies
* Tournament organizers
* Sports analytics platforms
* Cricket websites and applications

It can help manage player information, teams, matches, player statistics, match officials, and related payment records.

---

## 🗂️ Database Name

```sql
Cricket
```

---

# 🏗️ Database Structure

The database contains the following main tables:

### 1. Player

Stores information about cricket players.

| Column      | Description             |
| ----------- | ----------------------- |
| Player_Id   | Unique ID of the player |
| Player_Name | Name of the player      |
| Age         | Age of the player       |
| Gender      | Gender of the player    |
| Role        | Playing role            |
| Country     | Player's country        |

Example roles include:

* Batsman
* Bowler
* All-Rounder
* Wicket-Keeper

---

### 2. Team

Stores information about cricket teams.

| Column    | Description                      |
| --------- | -------------------------------- |
| Team_Id   | Unique ID of the team            |
| Team_Name | Name of the team                 |
| Country   | Country associated with the team |
| Coach     | Team coach                       |
| Ranking   | Team ranking                     |

---

### 3. Match

Stores information about cricket matches.

| Column     | Description            |
| ---------- | ---------------------- |
| Match_Id   | Unique ID of the match |
| Team1_Id   | ID of the first team   |
| Team2_Id   | ID of the second team  |
| Match_Date | Date of the match      |
| Match_Type | Type of match          |
| Venue      | Match venue            |
| Winner_Id  | ID of the winning team |

The database contains examples of:

* IPL
* T20
* World Cup

---

### 4. Player_Performance

Stores player performance statistics for matches.

| Column        | Description           |
| ------------- | --------------------- |
| Performace_Id | Unique performance ID |
| Match_Id      | ID of the match       |
| Player_Id     | ID of the player      |
| Runs          | Runs scored           |
| Wickets       | Wickets taken         |
| Catches       | Catches taken         |

This table is connected to the `Match` and `Player` tables using foreign keys.

---

### 5. Match_official

Stores information about match officials.

| Column        | Description          |
| ------------- | -------------------- |
| Official_Id   | Unique official ID   |
| Official_Name | Name of the official |
| Role          | Official's role      |
| Country       | Official's country   |
| Match_Id      | Associated match ID  |

---

### 6. Payment

Stores payment-related information.

| Column         | Description       |
| -------------- | ----------------- |
| Payment_Id     | Unique payment ID |
| Booking_Id     | Booking ID        |
| Amount         | Payment amount    |
| Payment_Mode   | Payment method    |
| Payment_Status | Payment status    |

Payment modes in the sample data include:

* UPI
* Card
* Net Banking
* Cash

Payment statuses include:

* Successful
* Failed
* Pending

---

# 🔗 Relationships

The major relationships in the database are:

```text
Player
   │
   │ Player_Id
   ▼
Player_Performance
   │
   │ Match_Id
   ▼
Match
   │
   └── Match_Id
          │
          ▼
     Match_official
```

The `Player_Performance` table connects players with their performances in particular matches.

---

# 📊 Sample Data

The database contains sample records for players such as:

* MS Dhoni
* Ruturaj Gaikwad
* Ravindra Jadeja
* Jasprit Bumrah
* Suryakumar Yadav
* Glenn Maxwell
* Rohit Sharma
* Virat Kohli
* Ben Stokes
* Joe Root

It also contains sample teams such as:

* CSK
* MI
* RCB
* KKR
* SRH
* RR
* PBKS
* Hobart Hurricanes
* Adelaide Strikers
* Sydney Sixers

---

# 📁 Project Structure

A simple GitHub repository can be organized as:

```text
Cricket-Database/
│
├── Cricket.sql
├── README.md
└── Queries/
    └── Cricket_Queries.sql
```

### Cricket.sql

Contains:

* Database creation
* Table creation
* Sample data insertion


### README.md

Contains the project documentation and database overview.

---

# 🛠️ Technologies Used

| Technology          | Purpose                       |
| ------------------- | ----------------------------- |
| SQL                 | Database operations           |
| DBMS                | Database management           |
| Relational Database | Store structured cricket data |

---

# 🎓 DBMS Concepts Covered

This project provides practical implementation of:

* Database creation
* Table creation
* Primary Key
* Foreign Key
* Unique constraint
* `NOT NULL` constraint
* `SELECT`
* `WHERE`
* `AND`
* `OR`
* `LIKE`
* `DISTINCT`
* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `JOIN`
* `UPDATE`
* `DELETE`

---

# 📌 Key Features

* Stores detailed player information
* Maintains team information and rankings
* Records match details
* Tracks player performance
* Stores match official information
* Maintains payment records
* Supports statistical analysis
* Demonstrates relational database concepts
* Provides practical SQL query examples

---


# 👨‍💻 Project Type

**Academic / BTech DBMS Project**

**Domain:** Cricket / Sports Management

**Database:** Cricket

**Technology:** SQL

---

# 📜 License

This project is created for educational and academic purposes.
