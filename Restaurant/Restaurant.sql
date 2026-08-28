CREATE DATABASE Restaurant
CREATE Table Restaurants
(
R_id     INT PRIMARY KEY,
R_name   VARCHAR(50) NOT NULL,
Address  VARCHAR(100) NOT NULL,
Contact  VARCHAR(15) NULL,
Rating   FLOAT CHECK (Rating >= 1 AND Rating <= 5),
Type     VARCHAR(10)
)

INSERT INTO Restaurants VALUES 
(101,'Barbeque Nation','Labbipet, Vijayawada','+91 8069028745',4.3,'Non-Veg'),
(102,'Spice Kitchen','Gachibowli, Hyderabad','+91 9456781230',4.2,'Non-Veg'),
(103,'United Food Palace','Benz Circle, Vijayawada','+91 6302818452',3.9,'Veg'),
(104,'Taj Hotel','Dwaraka Nagar, Visakhapatnam','+91 9890123456',4.0,'Veg'),
(105,'United Food Palace','Benz Circle, Vijayawada','+91 6302818452',3.5,'Veg'),
(106,'Paradise Biryani','Secunderabad, Hyderabad','+91 9876543210',4.2,'Non-Veg'),
(107,'Swagraha Family Restaurant','Secunderabad, Hyderabad','+91 9876543210',4.2,'Non-Veg')

CREATE TABLE Customer 
(
C_Id    INT PRIMARY KEY,
C_Name  VARCHAR(50) NOT NULL,
Contact VARCHAR(15),
Email   VARCHAR(50) NULL,
Address VARCHAR(100) NOT NULL
)

INSERT INTO Customer VALUES
(201,'Neelakanta','+91 9490550692','Neela55@gmail.com','Pakala, Tirupati'),
(202,'Bala Bharamaya','+91 7654328921','bbharama93.t@gmail.com','Hydrabad'),
(203,'Praveen Kumar','+91 9989940201','praveen.kumar@gmail.com','Madhura Nagar, Vijayawada'),
(204,'Ananya Reddy','+91 9123456780','ananya.reddy@gmail.com','Banjara Hills, Hyderabad'),
(205,'Likitha Reddy','+91 8919127834','likitha.reddy@gmail.com','MVP Colony, Mumbai'),
(206,'Sneha Varma','+91 8765432109','sneha.varma@gmail.com','Madhapur, Hyderabad'),
(207,'Rohit Sharma','+91 9876543210','rohit.sharma@gmail.com','Andheri, Mumbai'),
(208,'Devi','+91 9913192345','rani.devi@gmail.com','Dwaraka Nagar, Visakhapatnam'),
(209,'Sai Sudharshan','+91 8374824095','sailucky18@gmail.com','Housing Board Colony, Bengaluru'),
(210,'Yamini','+91 8919891729','yamini89@gmail.com','Tata Nagar, Tirupati')

CREATE TABLE Food(
F_ID       INT           PRIMARY KEY,
F_Name     VARCHAR(100)  NOT NULL,
Type       VARCHAR(15)  ,
Quantity   VARCHAR(20)   null,
Price      INT           CHECK (price>0) NOT NULL,
R_id       INT,          FOREIGN KEY(R_id) references Restaurants(R_id)
)

INSERT INTO food VALUES
(301, 'Hyderabadi Biryani', 'Non-Veg', '750 gm', 450, 107),
(302, 'Paneer Butter Masala', 'Veg', '500 gm', 320, 102),
(303, 'Chicken 65', 'Non-Veg', '500 gm', 380, 101),
(304, 'Masala Dosa', 'Veg', null, 150, 103),
(305, 'Mutton Curry', 'Non-Veg', '750 gm', 520, 104),
(306, 'Veg Fried Rice', 'Fast Food', '650 gm', 280, 105),
(307, 'Chicken Noodles', 'Chinese', '650 gm', 350, 102),
(308, 'Gobi Manchurian', 'Veg', '500 gm', 260, 101),
(309, 'Fish Fry', 'Non-Veg', '500 gm', 480, 106),
(310, 'Pizza', 'Fast Food', '250 gm', 180, 104)


CREATE TABLE Staff
(
S_Id    INT PRIMARY KEY,
S_Name  VARCHAR(50) NOT NULL,
Role    VARCHAR(20) NOT NULL,
Rating  FLOAT CHECK(Rating <= 5 AND Rating >= 1),
Orders  INT NULL,
Salary  INT NOT NULL
);

INSERT INTO Staff VALUES
(401, 'Ramesh Kumar', 'Chief', 4.7, 182,80000),
(402, 'Leeladhar', 'Waiter', 4.2, 340,35000),
(403, 'Anjali Sharma', 'Manager', 4.8, 120,85000),
(404, 'Vikram Singh', 'Cashier', 4.1, 210,50000),
(405, 'Suresh', 'Waiter', 4.5, 295,45000),
(406, 'Arjun Rao', 'Chief', 3.6, 195,74000)


CREATE TABLE Payment
(
Payment_ID       INT    PRIMARY KEY,
Amount           INT    CHECK (Amount >= 0)NOT NULL,
Payment_type     VARCHAR(50) NOT NULL,
Payment_Date     DATE,
Discount         INT,
C_ID             INT,   FOREIGN KEY(C_ID) REFERENCES Customer(C_Id)
)

INSERT INTO Payment VALUES
(501, 1250, 'UPI', '2026-08-01', 0, 201),
(502, 850, 'Cash', '2026-08-02', 50, 202),
(503, 2450, 'Card', '2026-08-03', 200, 203),
(504, 670, 'UPI', '2026-08-04', 0, 204),
(505, 1890, 'Card', '2026-08-05', 150, 205),
(506, 520, 'Cash', '2026-08-06', 20, 206),
(507, 3200, 'UPI', '2026-08-07', 300, 207),
(508, 1450, 'Card', '2026-08-08', 100, 208),
(509, 980, 'Cash', '2026-08-09', 50, 209),
(510, 2750, 'UPI', '2026-08-10', 250, 210)

SELECT * FROM Restaurants
SELECT * FROM Customer
SELECT * FROM Staff
SELECT * FROM Food
SELECT * FROM Payment
