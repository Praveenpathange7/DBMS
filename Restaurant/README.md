# 🍽️ Restaurant Management Database — SQL Project

A beginner-friendly **Restaurant Management Database** built using SQL to practice database design, table creation, constraints, data manipulation, and querying.

## 📌 Project Overview

This project demonstrates how a restaurant-related database can be designed and managed using SQL.

The database contains information about:

* 🍴 Restaurants
* 👥 Customers
* 🍱 Food Items
* 👨‍🍳 Staff
* 💳 Payments

The project focuses on understanding fundamental **DBMS and SQL concepts** such as Primary Keys, Foreign Keys, Constraints, `INSERT`, `UPDATE`, `DELETE`, and `SELECT` statements.

---

## 🗂️ Database Structure

The database consists of **5 main tables**:

### 1. 🏪 Restaurants

Stores information about restaurants.

| Column    | Data Type    | Constraint  |
| --------- | ------------ | ----------- |
| `R_id`    | INT          | Primary Key |
| `R_name`  | VARCHAR(50)  | NOT NULL    |
| `Address` | VARCHAR(100) | NOT NULL    |
| `Contact` | VARCHAR(15)  | NULL        |
| `Rating`  | FLOAT        | 1–5         |
| `Type`    | VARCHAR(10)  | —           |

---

### 2. 👥 Customer

Stores customer information.

| Column    | Data Type    | Constraint  |
| --------- | ------------ | ----------- |
| `C_Id`    | INT          | Primary Key |
| `C_Name`  | VARCHAR(50)  | NOT NULL    |
| `Contact` | VARCHAR(15)  | —           |
| `Email`   | VARCHAR(50)  | NULL        |
| `Address` | VARCHAR(100) | NOT NULL    |

---

### 3. 🍱 Food

Stores food items available at restaurants.

| Column     | Data Type    | Constraint          |
| ---------- | ------------ | ------------------- |
| `F_ID`     | INT          | Primary Key         |
| `F_Name`   | VARCHAR(100) | NOT NULL            |
| `Type`     | VARCHAR(15)  | —                   |
| `Quantity` | VARCHAR(20)  | NULL                |
| `Price`    | INT          | CHECK > 0, NOT NULL |
| `R_id`     | INT          | Foreign Key         |

**Relationship:**

`Food.R_id → Restaurants.R_id`

This connects each food item to a restaurant.

---

### 4. 👨‍🍳 Staff

Stores information about restaurant staff.

| Column   | Data Type   | Constraint  |
| -------- | ----------- | ----------- |
| `S_Id`   | INT         | Primary Key |
| `S_Name` | VARCHAR(50) | NOT NULL    |
| `Role`   | VARCHAR(20) | NOT NULL    |
| `Rating` | FLOAT       | 1–5         |
| `Orders` | INT         | NULL        |
| `Salary` | INT         | NOT NULL    |

---

### 5. 💳 Payment

Stores customer payment information.

| Column         | Data Type   | Constraint           |
| -------------- | ----------- | -------------------- |
| `Payment_ID`   | INT         | Primary Key          |
| `Amount`       | INT         | CHECK >= 0, NOT NULL |
| `Payment_type` | VARCHAR(50) | NOT NULL             |
| `Payment_Date` | DATE        | —                    |
| `Discount`     | INT         | —                    |
| `C_ID`         | INT         | Foreign Key          |

**Relationship:**

`Payment.C_ID → Customer.C_Id`

This connects each payment to a customer.

---

## 🔗 Database Relationships

```text
Restaurants
     │
     │ R_id
     ▼
   Food


Customer
     │
     │ C_Id
     ▼
  Payment
```

### Relationships Used

* One restaurant can have multiple food items.
* One customer can have multiple payment records.
* Foreign Keys maintain relationships between related tables.

---

## 🛠️ SQL Concepts Practiced

This project covers the following SQL concepts:

### Database & Table Creation

* `CREATE DATABASE`
* `CREATE TABLE`

### Constraints

* `PRIMARY KEY`
* `FOREIGN KEY`
* `NOT NULL`
* `CHECK`
* `NULL`

### Data Manipulation

* `INSERT INTO`
* `UPDATE`
* `DELETE`

### Data Retrieval

* `SELECT`
* `WHERE`
* Conditional filtering using `AND` / `OR`

### Other Concepts

* Relational database design
* Table relationships
* Data validation
* Filtering records
* Updating existing records
* Deleting records

---

## 📊 Sample Operations

### Retrieve vegetarian restaurants

```sql
SELECT * FROM Restaurants
WHERE type = 'Veg';
```

### Find restaurants with a rating of 4.5

```sql
SELECT * FROM Restaurants
WHERE Rating = 4.5;
```
---

## 🎯 Learning Objectives

The main objective of this project is to gain practical experience with relational databases and SQL.

Through this project, I practiced:

* Designing relational database tables
* Defining primary and foreign keys
* Applying data validation using constraints
* Inserting structured data
* Updating existing records
* Deleting records based on conditions
* Retrieving specific information using SQL queries
* Understanding relationships between tables

---

## 🚀 How to Run the Project

### 1. Clone the repository

```bash
git clone <your-repository-url>
```

### 2. Open the SQL file

Open the `.sql` file using any SQL-compatible database environment such as:

* MySQL
* SQL Server
* PostgreSQL *(minor syntax changes may be required)*

### 3. Execute the SQL script

Run the script to:

1. Create the database
2. Create the tables
3. Insert sample records
4. Update records
5. Delete records
6. Execute queries

---

## 🔮 Future Improvements

This project can be extended by adding:

* 📦 Orders table
* 🧾 Order details table
* 🪑 Table/Reservation management
* ⭐ Customer reviews
* 🔐 User authentication
* 📊 Sales and revenue reports
* 🔎 Advanced SQL queries
* `JOIN` operations
* Subqueries
* Aggregate functions
* Views
* Stored procedures
* Triggers

## ⭐ Conclusion

This Restaurant Management Database is a practical implementation of fundamental SQL and DBMS concepts. 
It provides a foundation for understanding how real-world applications can store, organize, relate, and manage data using relational databases.

**Learning SQL one query at a time 🚀**
