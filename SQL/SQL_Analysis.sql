/*
Project Problem:
Businesses struggle to manage complex sales processes, optimize pricing, and ensure profitability while maintaining customer satisfaction.

Project Aim:
To analyze sales distribution, profitability, discount trends, shipping delays, and top customers/products to improve decision-making and enhance business performance.

KEY FINDINGS :
Best-Selling Products: Canon imageCLASS 2200 Advanced Copier is the best-seller in the Technology category, with $61,599.83 in total sales.
Customer Segments: The Consumer segment generates the highest profit of $134,119.33.
Regional Performance: The West region leads with a total profit of $109,880.
Shipping Delays: Standard Class experiences the longest delays, with an average of 145.41 days.
Top Customers: Tamara Chand is the most profitable customer, contributing $8,981.32 in total profit.
*/
-- 1.What are the top 3 best-selling products in each category based on total sales?
WITH ProductSales AS (
    SELECT 
        p.Product_Name,
        p.Category,
        SUM(o.Sales) AS Total_Sales,
        RANK() OVER (PARTITION BY p.Category ORDER BY SUM(o.Sales) DESC) AS SalesRank
    FROM 
        Products p
    JOIN Orders o ON p.Product_ID = o.Product_ID
    GROUP BY p.Product_Name, p.Category
)
SELECT * FROM ProductSales 
WHERE SalesRank IN (1, 2, 3);

/* Insights : 
Furniture:HON 5400 Series Task Chairs for Big and Tall is the top-seller with total sales of $21,870.57.
Riverside Palais Royal Lawyers Bookcase Royale Cherry Finish ranks second with $15,610.97 in sales.
Bretford Rectangular Conference Table Tops is the third best-seller with $12,995.28.
Office Supplies:Fellowes PB500 Electric Punch Binding Machine leads with total sales of $27,453.38.
GBC DocuBind TL300 Electric Binding System comes second with $19,823.48.
GBC Ibimaster 500 Manual ProClick Binding System ranks third with $19,024.50.
Technology:Canon imageCLASS 2200 Advanced Copier is the best-seller with $61,599.83 in sales.
Cisco TelePresence System EX90 Videoconferencing Unit follows with $22,638.48.
Hewlett Packard LaserJet 3310 Copier is third with $18,839.68.*/



-- 2.Which customer segment generates the highest total profit?
SELECT 
    Segment,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM 
    Orders
GROUP BY Segment
ORDER BY Total_Profit DESC;

/* Insights : Consumer segment generates the highest total profit, with a profit of $134,119.33.
Corporate segment comes in second, generating a total profit of $91,779.45.
Home Office segment generates the lowest total profit, with $60,299.01.
These insights indicate that the Consumer segment is the most profitable, followed by Corporate and Home Office segments.*/


-- 3.Which region generates the highest total profit based on customer orders?
SELECT 
    l.Region,
    ROUND(SUM(o.Profit)) AS Total_Profit
FROM 
    Orders o
JOIN Location l ON o.Postal_Code = l.Postal_Code
GROUP BY l.Region
ORDER BY Total_Profit DESC;

/* Insights : West and East regions are the most profitable, while the South and Central regions generate lower profits.*/

-- 4.How can we identify the most recent order for each customer, along with their total order count?
WITH OrderCounts AS (
    SELECT 
        c.Customer_ID,
        c.Customer_Name,
        COUNT(o.Order_ID) AS Order_Count
    FROM 
        customers c
    JOIN Orders o ON c.Customer_ID = o.Customer_ID
    GROUP BY c.Customer_ID, c.Customer_Name
),
CustomerOrderFrequency AS (
    SELECT 
        oc.Customer_ID,
        oc.Customer_Name,
        oc.Order_Count,
        ROW_NUMBER() OVER (PARTITION BY oc.Customer_ID ORDER BY o.Order_Date DESC) AS Recent_Order_Rank
    FROM 
        OrderCounts oc
    JOIN Orders o ON oc.Customer_ID = o.Customer_ID
)
SELECT * FROM CustomerOrderFrequency WHERE Recent_Order_Rank = 1
ORDER BY Order_Count DESC;

/* Insights :  Highest Order Counts:William Brown has the highest number of orders with 37 orders.
John Leo and Matt Abelman both have 34 orders.
Paul Post and Chloris Katsenstein each have 32 orders.
Edward Hooks and Jonathan Doherty have 31 orders.
Lower Order Counts:Many customers have 2 to 3 orders, including Pauline Chand, Paul Knutson, Ritsa Hightower, and Tim Taslimi.
Several customers have made only 1 order, such as Carl Jackson, Jocasta Rupert, Lela Donovan, and Ricardo Emerson.
*/

-- 5.Which products have an average discount greater than 50%, and how are they ranked by their average discount?
SELECT 
    p.Product_Name,
    ROUND(AVG(o.Discount),2) AS Average_Discount
FROM 
    Products p
JOIN Orders o ON p.Product_ID = o.Product_ID
GROUP BY p.Product_Name
HAVING AVG(o.Discount) > 0.5 
ORDER BY Average_Discount DESC;

/* Insghts : Top Discounted Product: Eureka Disposable Bags for Sanitaire Vibra Groomer I Upright Vac has the highest average discount of 80%.
High Discounts (70-79%):GBC Plasticlar Binding Covers and GBC VeloBinder Electric Binding Machine both have an average discount of 73%.
Cisco 8961 IP Phone Charcoal, Epson Perfection V600 Photo Scanner, and Lexmark MarkNet N8150 Wireless Print Server have a 70% discount.
Moderate Discounts (60-69%):Premier Elliptical Ring Binder Black has a 64% average discount.Wilson Jones Custom Binder Spines & Labels has a 63% discount.
Avery Triangle Shaped Sheet Lifters Black 2/Pack and Avery Durable Slant Ring Binders each have a 62%discount.
Lower Discounts (50-59%):Several products, including Eldon Executive Woodline II Cherry Finish Desk Accessories and Acco PRESSTEX Data Binder with Storage Hooks, have discounts ranging between 51% and 59%. */

-- 6.Which shipping modes have an average delay greater than 2 days, and how are they ranked by their average delay time?
WITH ShipmentDelays AS (
    SELECT 
        Order_ID,
        Ship_Mode,
        DATEDIFF(Ship_Date, Order_Date) AS Delay_Days
    FROM Orders
)
SELECT 
    Ship_Mode,
    AVG(Delay_Days) AS Avg_Delay
FROM ShipmentDelays
GROUP BY Ship_Mode
HAVING AVG(Delay_Days) > 2  -- Example threshold for delays
ORDER BY Avg_Delay DESC;

/*Standard Class experiences the most significant delays, while First Class is relatively quicker but still exceeds the 2-day threshold.*/

-- 7.Who are the top 10 customers ranked by total profit, and how much profit has each of them generated?
WITH CustomerProfit AS (
    SELECT 
        c.Customer_ID,
        c.Customer_Name,
        ROUND(SUM(o.Profit),2) AS Total_Profit,
        RANK() OVER (ORDER BY SUM(o.Profit) DESC) AS ProfitRank
    FROM customers c
    JOIN Orders o ON c.Customer_ID = o.Customer_ID
    GROUP BY c.Customer_ID, c.Customer_Name
)
SELECT * FROM CustomerProfit WHERE ProfitRank <= 10;
/* Insights : show which customers contribute the most to overall profitability, with Tamara Chand leading the group by a significant margin.*/

-- 8.Which products have generated total sales of less than $1000, and how are they ranked by their total sales?
SELECT 
    p.Product_Name,
    ROUND(SUM(o.Sales),2) AS Total_Sales
FROM Products p
JOIN Orders o ON p.Product_ID = o.Product_ID
GROUP BY p.Product_Name
HAVING SUM(o.Sales) < 1000  
ORDER BY Total_Sales;

/* Insights : the products with the lowest sales, providing useful information for identifying underperforming items that may need further attention.*/

-- 9.Which region has the highest average sales per order?
SELECT 
    l.Region,
    ROUND(AVG(o.Sales), 2) AS Avg_Sales_Per_Order
FROM 
    Orders o
JOIN Location l ON o.Postal_Code = l.Postal_Code
GROUP BY l.Region
ORDER BY Avg_Sales_Per_Order DESC;

/* Insights : the South region generates the most revenue per order on average, while the Central region has the lowest average sales per order.*/
-- 10.Which product categories generate the highest total profit across all orders?
SELECT 
    p.Category,
    ROUND(SUM(o.Profit), 2) AS Total_Profit
FROM 
    Products p
JOIN Orders o ON p.Product_ID = o.Product_ID
GROUP BY p.Category
ORDER BY Total_Profit DESC;

/* Insights : Technology leads in profitability, followed by Office Supplies, with Furniture generating significantly lower profits in comparison.*/


-- Which orders have a total sales amount greater than $5000, and what are the details of these high-value orders?
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `highvalueorders` AS
    SELECT 
        `o`.`Order_ID` AS `Order_ID`,
        `o`.`Customer_ID` AS `Customer_ID`,
        `o`.`Product_ID` AS `Product_ID`,
        `o`.`Sales` AS `Sales`,
        `o`.`Quantity` AS `Quantity`,
        `o`.`Profit` AS `Profit`
    FROM
        `orders` `o`
    WHERE
        (`o`.`Sales` > 5000);

/* Insights :  both high-profit orders and orders that resulted in significant losses. It's useful for identifying which high-value orders may need more attention to mitigate losses or optimize profits.*/
