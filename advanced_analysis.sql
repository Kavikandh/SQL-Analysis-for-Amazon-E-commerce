/* =====================================================
   ADVANCED BUSINESS ANALYSIS
   SQL Analysis for Global Superstore Retail Sales
===================================================== */
-- Segment Revenue & Profitability
SELECT 
    Segment,
    SUM(Sales) AS Revenue,
    SUM(Profit) AS Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin
FROM Orders
GROUP BY Segment
ORDER BY Revenue DESC;
=====================================================
-- Category Profitability
SELECT 
    Category,
    SUM(Sales) AS Revenue,
    SUM(Profit) AS Profit,
    (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin
FROM Orders
GROUP BY Category
ORDER BY Profit DESC;
=====================================================
-- Discount Impact on Profit
SELECT 
    Discount,
    AVG(Profit) AS Avg_Profit
FROM Orders
GROUP BY Discount
ORDER BY Discount;
=====================================================
-- Shipping Mode Profitability
SELECT 
    Ship_Mode,
    AVG(Profit) AS Avg_Profit,
    AVG([Shipping Cost]) AS Avg_Shipping_Cost
FROM Orders
GROUP BY Ship_Mode
ORDER BY Avg_Profit DESC;
=====================================================
-- Market Revenue Ranking
SELECT 
    Market,
    SUM(Sales) AS Revenue,
    RANK() OVER (ORDER BY SUM(Sales) DESC) AS Revenue_Rank
FROM Orders
GROUP BY Market;
=====================================================
-- Yearly Revenue Trend
SELECT 
    YEAR(Order_Date) AS Order_Year,
    SUM(Sales) AS Revenue
FROM Orders
GROUP BY YEAR(Order_Date)
ORDER BY Order_Year;
=====================================================
-- Top 10 Loss-Making Products
SELECT TOP 10
    Product_Name,
    SUM(Profit) AS Total_Profit
FROM Orders
GROUP BY Product_Name
ORDER BY Total_Profit ASC;
