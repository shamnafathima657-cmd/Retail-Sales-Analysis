create database retail_db;
use retail_db;
SELECT * FROM superstore LIMIT 10;
DESCRIBE superstore;
SELECT COUNT(*) FROM superstore;

-- analysis
SELECT Round(SUM(Sales),0) AS Total_Sales FROM superstore;
SELECT round(SUM(Profit),0)AS Total_Profit FROM superstore;
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders FROM superstore;

-- graphs
-- sales by region
SELECT Region, round(SUM(Sales),0) AS Total_Sales FROM superstore GROUP BY Region ORDER BY Total_Sales DESC;
-- sales by category
SELECT Category, round(SUM(Sales),0) AS Total_Sales FROM superstore GROUP BY Category;
-- Top customers
SELECT Customer_Name, SUM(Sales) AS Total_Sales FROM superstore GROUP BY Customer_Name ORDER BY Total_Sales DESC LIMIT 5;
-- monthly sales
UPDATE superstore SET Order_Date = STR_TO_DATE(Order_Date,'%d-%m-%Y');
ALTER TABLE superstore MODIFY Order_Date date;
SELECT MONTH(Order_Date) AS Month, ROUND(SUM(Sales),0) AS Monthly_Sales FROM superstore GROUP BY Month(Order_Date) ORDER BY Month;
-- profit by category
SELECT Category, round(SUM(Profit),0)AS Total_Profit FROM superstore GROUP BY Category ORDER BY Total_Profit DESC;
SELECT * FROM superstore;


