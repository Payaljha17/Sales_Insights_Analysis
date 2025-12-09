#CREATE DATABASE Sales_Insights
USE Sales_Insights;
SELECT * FROM sales_2025;

-- QUES 1 Total Sales Per City
SELECT City,
SUM(sales) AS TotalSales
FROM sales_2025
GROUP BY City
ORDER BY TotalSales DESC;

-- QUES 2 Top 5 Selling Products by Quantity
SELECT product,
SUM(quantity_ordered) AS TotalQuantitySold
FROM sales_2025
GROUP BY product
ORDER BY TotalQuantitySold DESC
LIMIT 5 ;

-- Ques 3 Total by Products (by Revenue)
SELECT product,
SUM(sales) AS TotalRevenue
FROM sales_2025
GROUP BY product
ORDER BY TotalRevenue DESC
LIMIT 5 ;

-- Ques 4 Monthly Sales Trend
SELECT month,
SUM(sales) AS MonthlyRevenue
FROM sales_2025
GROUP BY month
ORDER BY month;

-- Ques 5 Sales by Hour 
SELECT hour,
SUM(sales) AS SalesPerHour
FROM sales_2025
GROUP BY hour
ORDER BY hour;

-- Ques 6 Total Quantity Sold Per Product
SELECT product,
SUM(quantity_ordered) AS TotalQuantity
FROM sales_2025
GROUP BY product
ORDER BY TotalQuantity DESC;

-- Ques 7 Sales by City and Product
SELECT City, product,
SUM(sales) AS TotalSales
FROM sales_2025
GROUP BY city, product
ORDER BY city, TotalSales DESC;




