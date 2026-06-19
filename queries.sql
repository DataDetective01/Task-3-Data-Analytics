project_3: SQL Data Analysis
sales_dataset
Query_1: View all orders: SELECT * FROM sales_dataset
Query_2: Filter only Delivered orders: SELECT OrderID, Product, TotalPrice, OrderStatus FROM sales_dataset WHERE OrderStatus='Delivered';
Query_3: Orders with TotalPrice greater than 2000: SELECT OrderID,Product,Quantity, TotalPrice FROM sales_dataset WHERE TotalPrice > 2000;
Query_4: Delivered orders with TotalPrice greater than 2000: SELECT OrderID,Product,TotalPrice,OrderStatus FROM sales_dataset WHERE TotalPrice > 2000;
Query_5: All orders sorted by TotalPrice, highest to lowest: SELECT OrderID,Product,TotalPrice,OrderStatus FROM sales_dataset ORDER BY TotalPrice DESC;
Query_6: Count of orders by Product SELECT Product, COUNT (*), AS TotalOrders FROM sales_dataset GROUP BY Product
Query_7: Total revenue AND average order value BY Product SELECT Product,COUNT (*), AS TotalOrders, SUM(TotalPrice) AS TotalRevenue, AVG(TotalPrice) AS AvgOrderValue FROM sales_dataset GROUP BY Product ORDER BY TotalRevenue DESC
Query_8: Count of Orders BY OrderStatus SELECT OrderStatus, COUNT(*) AS TotalOrders, SUM(TotalPrice) AS TotalRevenue FROM sales_dataset GROUP BY OrderStatus ORDER BY TotalOrders DESC;
Query_9: Orders and Revenue by Referral Source  SELECT ReferralSource, COUNT(*) AS TotalOrders, SUM(TotalPrice) AS TotalRevenue, AVG( TotalPrice) AS AvgOrderValue FROM sales_dataset GROUP BY ReferralSource ORDER BY TotalOrders DESC;
Query_10: Orders and Revenue by Payment Method SELECT PaymentMethod, COUNT(*) AS TotalOrders, SUM(TotalOrders) AS TotalRevenue, AVG(TotalPrice), AS AvgOrderValue FROM sales_dataset GROUP BY PaymentMethod ORDER BY TotalOrders DESC;
Query_11: Products where Total Revenue is more than 100,000 SELECT Product, COUNT(*) AS TotalOrders, SUM(TotalPrice) AS TotalRevenue FROM sales_dataset GROUP BY Product HAVING SUM(TotalPrice) > 100000 ORDER BY TotalRevenue DESC;