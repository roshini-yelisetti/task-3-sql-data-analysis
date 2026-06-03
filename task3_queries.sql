-- Query 1: Total Orders
SELECT COUNT(*) AS Total_Orders
FROM `sample_ superstore`;

-- Query 2: Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM `sample_ superstore`;

-- Query 3: Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM `sample_ superstore`;

-- Query 4: Average Sales
SELECT AVG(Sales) AS Average_Sales
FROM `sample_ superstore`;

-- Query 5: Average Profit
SELECT AVG(Profit) AS Average_Profit
FROM `sample_ superstore`;

-- Query 6: Sales by Category
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM `sample_ superstore`
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Query 7: Profit by Category
SELECT Category,
       SUM(Profit) AS Total_Profit
FROM `sample_ superstore`
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Query 8: Sales by Region
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM `sample_ superstore`
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Query 9: Top 10 Customers by Sales
SELECT `Customer ID`,
       SUM(Sales) AS Total_Sales
FROM `sample_ superstore`
GROUP BY `Customer ID`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 10: Top 5 Most Profitable Products
SELECT `Product Name`,
       SUM(Profit) AS Total_Profit
FROM `sample_ superstore`
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 5;

-- Query 11: Orders with Profit Greater Than 100
SELECT *
FROM `sample_ superstore`
WHERE Profit > 100;

-- Query 12: Create View
CREATE VIEW sales_summary AS
SELECT Category,
       SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM `sample_ superstore`
GROUP BY Category;

-- Query 13: Display View
SELECT * FROM sales_summary;

-- Query 14: Products with Sales Above Average
SELECT `Product Name`, Sales
FROM `sample_ superstore`
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM `sample_ superstore`
);

-- Query 15: Create Index
CREATE INDEX idx_customer
ON `sample_ superstore`(`Customer ID`(20));


