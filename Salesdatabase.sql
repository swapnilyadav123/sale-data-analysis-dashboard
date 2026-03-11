CREATE DATABASE sales_project;
USE sales_project;

CREATE TABLE sales_data (
Order_ID INT,
Order_Date DATE,
Region VARCHAR(50),
Customer_Name VARCHAR(100),
Category VARCHAR(50),
Product VARCHAR(100),
Quantity INT,
Price FLOAT,
Sales FLOAT
);

SELECT * FROM sales_data;

SELECT COUNT(Order_ID) AS Total_Orders
FROM sales_data;

SELECT SUM(Sales) AS Total_Revenue
FROM sales_data;

SELECT Region, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region;

SELECT Category, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category;

SELECT Product, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 5;

SELECT MONTH(Order_Date) AS Month,
SUM(Sales) AS Revenue
FROM sales_data
GROUP BY Month
ORDER BY Month;

SELECT AVG(Sales) AS Average_Sales
FROM sales_data;