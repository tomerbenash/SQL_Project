use project_x;


-- טופ 3 לקוחות שקנו הכי הרבה כרטיסים להופעות

SELECT c.Customer_Id, c.First_Name, c.Last_Name, COUNT(t.CustID) AS 'Number of Tickets Bought'
FROM Customers c, Tickets t
WHERE c.Customer_Id = t.CustID
GROUP BY c.Customer_Id, c.First_Name, c.Last_Name
ORDER BY COUNT(t.CustID) DESC
LIMIT 3;

-- רווח ההופעות לפי מכירת כרטיסים לפי שעה

SELECT s.code, s.name, s.length, SUM(t.price) as 'Show Profit' ,SUM(t.price) / (s.length) AS profit_per_hour
FROM shows s , tickets t
where s.code = t.codeshow
GROUP BY s.code
ORDER BY profit_per_hour DESC;

-- כרטיסים שנמכרו בהופעות בשנת 2022

SELECT s.Code, s.Name, COUNT(t.CodeShow) AS 'Number of Tickets Sold', s.Date
FROM Shows s
JOIN Tickets t ON s.Code = t.CodeShow
WHERE YEAR(s.Date) = 2022
GROUP BY s.Code, s.Name
ORDER BY COUNT(t.CodeShow) DESC;

-- לכל לקוח, כמה כרטיסים קנה, מחיר גבוה ומחיר נמוך
SELECT c.Customer_Id, c.First_Name, c.Last_Name, COUNT(t.CustID) AS 'Number of Tickets Bought',
 MIN(t.Price) AS 'Lowest Ticket Price', MAX(t.Price) AS 'Highest Ticket Price'
FROM Customers c
JOIN Tickets t ON c.Customer_Id = t.CustID
GROUP BY c.Customer_Id;

-- פופולריות האמננים לפי מכירת הכרטיסים להופעות שלהם
SELECT a.Artist_Id, a.First_Name, a.Last_Name,  count(t.codeShow) AS 'Total Tickets Sold'
FROM Artist a, Shows s, Tickets t
WHERE a.Artist_Id = s.Artist_Id and s.Code = t.CodeShow
GROUP BY a.Artist_Id, a.First_Name, a.Last_Name
ORDER BY COUNT(t.codeShow) DESC;

--  רווחי הופעה ומפיק שהפיק
SELECT s.Code, s.Name, SUM(t.Price) AS 'Profit', p.First_Name as Producer_First_Name, p.Last_Name as Producer_Last_Name
FROM Shows s, Tickets t, Producer p
WHERE s.Code = t.CodeShow AND s.Producer_Id = p.Id
GROUP BY s.Code
ORDER BY SUM(t.Price) DESC;

-- מדפיס כרטיס אמיתי
SELECT c.Customer_Id, c.First_Name, c.Last_Name, s.Name as 'Show Name', t.Number, t.Seat
FROM Customers c, Tickets t, Shows s
WHERE c.Customer_id = t.CustID AND s.Code = t.codeShow;


-- האמנים שזמן ההופעה שלהם ארוך מהממוצע וזמן ההופעה שלהם
SELECT a.First_Name, a.Last_Name, s.Length
FROM Artist a, Shows s
WHERE s.Artist_Id = a.Artist_Id AND
s.Length > (SELECT AVG(Length) FROM Shows)
GROUP BY a.First_Name, a.Last_Name, s.Length;


-- יעד המכירות של הקופאים וכמה כרטיסים הם מכרו ב 2020
SELECT c.First_Name, c.Last_Name, COUNT(*) as Tickets_Sold, c.Sales_Goal
FROM Cashier c, Shows s, Tickets t
WHERE t.IdCashierSold = c.Cashier_Id AND t.CodeShow = s.Code
AND YEAR(s.Date) = 2020
GROUP BY c.First_Name, c.Last_Name, c.Sales_Goal;

-- היסטוריית קניה של לקוח מסוים
SELECT c.First_Name, c.Last_Name, s.Name as 'Name of show', s.Date, t.Price
FROM Shows s, Tickets t, Customers c
WHERE t.CodeShow = s.Code AND c.Customer_Id = t.CustID
AND t.CustID = 501
GROUP BY s.Name, s.Date, t.Price;

-- הלקוחה שקנתה את הכרטיס היקר ביותר ואת שם וקוד ההופעה
-- הפנימיתביותר מציגה את מחיר הכרטיס
-- שאילתה אמצעית מציגה את הלקוחה ואת פרטי ההופעה והמחיר
SELECT c.First_Name, c.Last_Name, t.Price, t.CodeShow, s.Name as 'Show Name'
FROM Customers c, Shows s, 
(SELECT Price, CodeShow, CustID
  FROM Tickets
  WHERE Price = 
  (SELECT MAX(Price)
    FROM Tickets)) t
WHERE c.Customer_Id = t.CustID AND s.Code = t.CodeShow;

-- לכל לקוח הצג את הזמן הנותר להופעה שרכש לה כרטיס
SELECT t.CustID, s.name, s.Code, s.Name, s.Date, DATEDIFF(s.Date, CURDATE()) AS 'Days Left'
FROM Tickets t, Shows s, Customers c
WHERE t.CustID = c.customer_id AND s.code = t.CodeShow;


START TRANSACTION;

-- להוסיף 2 הופעות חדשות
INSERT INTO Shows (Code, Name, Length, Date, Producer_Id, Artist_Id)
VALUES
  (113, 'Oggy and the cockroches', 2.5, '2024-12-01', 7, 7),
  (114, 'Mandale the book seller', 3.0, '2023-12-15', 2, 12);

-- מעדכן את יעדי המכירות של קופאי מסוים
UPDATE Cashier
SET Sales_Goal = 5
WHERE Cashier_Id = 22;

-- מוחק כרטיס מסוים
DELETE FROM Tickets
WHERE Number = 922;

-- מעדכן תפקיד של אמן
UPDATE Artist
SET Role = 'Guitarist'
WHERE Artist_Id = 14;

ROLLBACK
















