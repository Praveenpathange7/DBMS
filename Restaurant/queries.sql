USE Restaurant;


-- ==========================================
-- SELECT QUERIES
-- ==========================================

-- 1. Display all restaurants
SELECT *
FROM Restaurants;

-- 2. Display all customers
SELECT *
FROM Customer;

-- 3. Display all food items
SELECT *
FROM Food;

-- 4. Display all staff
SELECT *
FROM Staff;

-- 5. Display all payment records
SELECT *
FROM Payment;


-- ==========================================
-- SELECT WITH WHERE
-- ==========================================

-- 6. Find vegetarian restaurants
SELECT *
FROM Restaurants
WHERE Type = 'Veg';

-- 7. Find restaurants with a rating of 4.5
SELECT *
FROM Restaurants
WHERE Rating = 4.5;

-- 8. Find the contact number of restaurants at Rangampet
SELECT Contact
FROM Restaurants
WHERE Address = 'Rangampet';

-- 9. Find the email of customer with C_ID 210
SELECT Email
FROM Customer
WHERE C_Id = 210;

-- 10. Display food price and quantity
SELECT Price, Quantity
FROM Food;

-- 11. Find fast-food items costing more than 399
SELECT *
FROM Food
WHERE Type = 'Fast Food'
AND Price > 399;

-- 12. Find payment method of Payment_ID 505
SELECT Payment_type
FROM Payment
WHERE Payment_ID = 505;


-- ==========================================
-- AND / OR OPERATORS
-- ==========================================

-- 13. Find non-veg food costing more than 400
SELECT *
FROM Food
WHERE Type = 'Non-Veg'
AND Price > 400;

-- 14. Find restaurants that are Veg OR have rating above 4
SELECT *
FROM Restaurants
WHERE Type = 'Veg'
OR Rating > 4;

-- 15. Find staff with rating above 4.5 AND orders above 150
SELECT *
FROM Staff
WHERE Rating > 4.5
AND Orders > 150;

-- 16. Find staff with fewer than 50 orders OR rating below 2
SELECT *
FROM Staff
WHERE Orders < 50
OR Rating < 2;


-- ==========================================
-- ORDER BY
-- ==========================================

-- 17. Display restaurants from highest to lowest rating
SELECT *
FROM Restaurants
ORDER BY Rating DESC;

-- 18. Display food from lowest to highest price
SELECT *
FROM Food
ORDER BY Price ASC;

-- 19. Display staff from highest to lowest salary
SELECT *
FROM Staff
ORDER BY Salary DESC;


-- ==========================================
-- UPDATE QUERIES
-- ==========================================

-- 20. Update restaurant address
UPDATE Restaurants
SET Address = 'MGB Colony, Mumbai'
WHERE R_id = 101;

-- 21. Update restaurant rating
UPDATE Restaurants
SET Rating = 4.5
WHERE R_name = 'Taj Hotel';

-- 22. Update customer email and address
UPDATE Customer
SET Email = 'neela345@gmail.com',
    Address = 'Tata Nagar, Tirupati'
WHERE C_Name = 'Neelakanta';

-- 23. Update food quantity
UPDATE Food
SET Quantity = '10 gm'
WHERE F_ID = 305
   OR Price = 399;

-- 24. Update payment discount
UPDATE Payment
SET Discount = 15
WHERE Payment_ID = 501;

-- 25. Change Pizza type
UPDATE Food
SET Type = 'Fast Food'
WHERE F_Name = 'Pizza';

-- 26. Change restaurant type
UPDATE Restaurants
SET Type = 'Veg'
WHERE R_ID = 107;

-- 27. Update staff salary
UPDATE Staff
SET Salary = 29000
WHERE Rating > 4.6
AND Orders > 200;


-- ==========================================
-- DELETE QUERIES
-- ==========================================

-- 28. Delete a specific payment
DELETE FROM Payment
WHERE Payment_ID = 502
AND Payment_type = 'Cash';

-- 29. Delete Burger food item
DELETE FROM Food
WHERE F_Name = 'Burger';

-- 30. Delete staff based on name and rating
DELETE FROM Staff
WHERE S_Name = 'Suresh'
AND Rating < 2;

-- 31. Delete staff with fewer than 50 orders OR rating below 2
DELETE FROM Staff
WHERE Orders < 50
OR Rating < 2;


-- ==========================================
-- AGGREGATE FUNCTIONS
-- ==========================================

-- 32. Count total restaurants
SELECT COUNT(*) AS Total_Restaurants
FROM Restaurants;

-- 33. Count total customers
SELECT COUNT(*) AS Total_Customers
FROM Customer;

-- 34. Find average restaurant rating
SELECT AVG(Rating) AS Average_Rating
FROM Restaurants;

-- 35. Find highest food price
SELECT MAX(Price) AS Highest_Price
FROM Food;

-- 36. Find lowest food price
SELECT MIN(Price) AS Lowest_Price
FROM Food;

-- 37. Find total payment amount
SELECT SUM(Amount) AS Total_Amount
FROM Payment;

-- 38. Find average staff salary
SELECT AVG(Salary) AS Average_Salary
FROM Staff;


-- ==========================================
-- DISTINCT
-- ==========================================

-- 39. Display different restaurant types
SELECT DISTINCT Type
FROM Restaurants;

-- 40. Display different food types
SELECT DISTINCT Type
FROM Food;

-- 41. Display different payment methods
SELECT DISTINCT Payment_type
FROM Payment;

-- ==========================================
-- JOIN QUERIES
-- ==========================================

-- 42. Display food items with restaurant names
SELECT
    Food.F_Name,
    Food.Price,
    Restaurants.R_name
FROM Food
INNER JOIN Restaurants
ON Food.R_id = Restaurants.R_id;

-- 43. Display customers with their payment details
SELECT
    Customer.C_Name,
    Payment.Amount,
    Payment.Payment_type,
    Payment.Payment_Date
FROM Customer
INNER JOIN Payment
ON Customer.C_Id = Payment.C_ID;

-- 44. Display restaurant name and food item
SELECT
    Restaurants.R_name,
    Food.F_Name,
    Food.Price
FROM Restaurants
INNER JOIN Food
ON Restaurants.R_id = Food.R_id;


-- ==========================================
-- IN
-- ==========================================

-- 45. Find restaurants in selected types
SELECT *
FROM Restaurants
WHERE Type IN ('Veg', 'Non-Veg');

-- 46. Find payments made using UPI or Card
SELECT *
FROM Payment
WHERE Payment_type IN ('UPI', 'Card');


-- ==========================================
-- LIKE
-- ==========================================

-- 47. Find customers whose names start with 'S'
SELECT *
FROM Customer
WHERE C_Name LIKE 'S%';

-- 48. Find restaurants whose names contain 'Food'
SELECT *
FROM Restaurants
WHERE R_name LIKE '%Food%';

-- 49. Find food items containing 'Chicken'
SELECT *
FROM Food
WHERE F_Name LIKE '%Chicken%';


-- ==========================================
-- NULL
-- ==========================================

-- 50. Find food items where quantity is NULL
SELECT *
FROM Food
WHERE Quantity IS NULL;

-- 51. Find customers whose email is not NULL
SELECT *
FROM Customer
WHERE Email IS NOT NULL;
