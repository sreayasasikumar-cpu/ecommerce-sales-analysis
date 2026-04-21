-- Total Sales
SELECT SUM(Sales) AS Total_Sales FROM superstore_cleaned;

-- Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore_cleaned
GROUP BY Category;

-- Profit by Category
SELECT Category, SUM(Profit) AS Total_Profit
FROM superstore_cleaned
GROUP BY Category;

-- Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM superstore_cleaned
GROUP BY Region;

-- Yearly Sales Trend
SELECT YEAR(Order_Date) AS Year, SUM(Sales) AS Total_Sales
FROM superstore_cleaned
GROUP BY YEAR(Order_Date)
ORDER BY Year;
