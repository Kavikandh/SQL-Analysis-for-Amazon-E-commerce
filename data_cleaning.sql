/* =====================================================
   DATA CLEANING & VALIDATION
   SQL Analysis for Global Superstore Retail Sales
===================================================== */

-- =========================================
-- 1. Verify Row Counts After Import
-- =========================================

SELECT COUNT(*) AS Orders_Count FROM Orders;
SELECT COUNT(*) AS Returns_Count FROM Returns;
SELECT COUNT(*) AS People_Count FROM People;

-- =========================================
-- 2. Check for Duplicate Regions in People
-- =========================================

SELECT Region, COUNT(*) AS Duplicate_Count
FROM People
GROUP BY Region
HAVING COUNT(*) > 1;

-- =========================================
-- 3. Check for NULL Values in Critical Columns
-- =========================================

SELECT *
FROM Orders
WHERE Sales IS NULL
   OR Profit IS NULL
   OR Order_ID IS NULL;

-- =========================================
-- 4. Check for Negative Sales (Data Errors)
-- =========================================

SELECT *
FROM Orders
WHERE Sales < 0;

-- =========================================
-- 5. Validate Returns Join Integrity
-- =========================================

SELECT r.Order_ID
FROM Returns r
LEFT JOIN Orders o
    ON r.Order_ID = o.Order_ID
WHERE o.Order_ID IS NULL;

-- If this returns 0 rows → data integrity confirmed

-- =========================================
-- 6. Check Date Ranges
-- =========================================

SELECT 
    MIN(Order_Date) AS First_Order_Date,
    MAX(Order_Date) AS Last_Order_Date
FROM Orders;

-- =========================================
-- 7. Verify Discount Range
-- =========================================

SELECT 
    MIN(Discount) AS Min_Discount,
    MAX(Discount) AS Max_Discount
FROM Orders;
