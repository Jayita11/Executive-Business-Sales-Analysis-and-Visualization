# Executive-Business-Sales-Analysis-and-Visualization


## Project Background

The Sales Performance Management project utilizes data from sales orders, customer behavior, and regional preferences from previous years (2020 up to May 2024), offering critical insights into optimizing product offerings, pricing strategies, and profitability. This project is designed to help business leaders make data-driven decisions to improve revenue, resource allocation, and operational efficiency.

As businesses face increasing complexity with varying customer demands and regional nuances, understanding sales distribution by product category, analyzing profitability across customer segments, and monitoring shipping delays become essential for strategic decision-making. This project aims to provide a comprehensive view of sales operations to help businesses.

![DALL·E 2024-09-20 02 27 37 - A simple flat image representing sales and customers in an abstract style, with shapes and colors that suggest the flow of transactions and interactio](https://github.com/user-attachments/assets/c293b8c8-3f02-45d1-9893-00eaba6ec483)

 
## Key Insights and Recommendations

- **Best-Selling Products:** Analysis of top-selling products to inform inventory management and marketing efforts, optimizing stock levels and sales strategies.
- **Customer Segments:** Examination of customer segment profitability to guide targeted marketing initiatives and improve retention strategies for high-value clients.
- **Regional Performance:** Evaluation of regional sales trends to support resource allocation and expansion efforts in high-performing areas.
- **Top Customers:** Identification of top customers and their contributions to sales and profitability, shaping personalized sales strategies and loyalty programs.
- **Profit Margins:** Analysis of overall sales versus profit growth to identify areas where pricing strategies may need adjustment for better profitability.
- **Product Category Trends:** Identification of strong-performing product categories to align inventory and marketing strategies with customer demand.
- **Seasonal Sales Trends:** Evaluation of sales spikes during key periods to optimize inventory and promotional efforts around peak demand times.

An interactive Tableau dashboard accompanies this project to provide a dynamic and visual exploration of the findings [here](https://public.tableau.com/app/profile/jayita.chatterjee/viz/SalesCustomerDashboard_17244002737510/SalesDashboard).

Excel is used to inspect, clean, and prepare the data for analysis, ensuring accurate and actionable insights can be found [here](https://github.com/Jayita11/Executive-Business-Sales-Analysis-and-Visualization/tree/main/Excel_Cleaning_Steps).

The SQL queries regarding various business questions can be found [here](https://github.com/Jayita11/Executive-Business-Sales-Analysis-and-Visualization/tree/main/SQL).

Python is used to insert data into SQL, and the relevant scripts can be found [here](https://github.com/Jayita11/Executive-Business-Sales-Analysis-and-Visualization/tree/main/Python_Code_SQL_Data_Insertion).

By harnessing this data, businesses can address key operational challenges, optimize performance, and improve overall profitability.


## Dataset

This project utilizes a dataset consisting of four CSV files: `Customers.csv`, `Location.csv`, `Orders.csv`, and `Products.csv`. These files provide a comprehensive view of the sales process, covering customer details, product information, order transactions, and regional data. The dataset enables an in-depth analysis of key metrics such as product performance, customer segments, and sales trends.

The Entity Relationship Diagram(ERD) for the data is mentioned below

![ERD_1](https://github.com/user-attachments/assets/b9802d84-3ce1-432b-8b86-63c29da1b820)

## Executive Summary

### Sales Dashboard:

![Sales Dashboard-2](https://github.com/user-attachments/assets/b51e1cd6-9542-4069-b46e-31de6c03cbfb)

- **Subcategory Comparison by Sales:**  
  Subcategories like Phones, Chairs, Binders, and Storage significantly outperformed others in 2023, indicating strong demand in these areas. Meanwhile, Fasteners, Envelopes, and Labels showed minimal growth, suggesting potential issues with demand or increased competition.
  
- **Segments by Monthly Sales:**  
  The Consumer segment saw a peak in sales during May, while the Corporate segment had steady performance, peaking in September. The Home Office segment demonstrated consistent growth, indicating stable demand across the months.
  
- **Trends Over Time by Sales:**  
  Sales in 2023 consistently remained above the average of $14.10K for most of the year, with frequent spikes toward the $30K range. There was a dip below the average at the beginning of the year, but sales rebounded strongly, showing end-of-year improvement.
  
- **Region-wise Sales:**  
  The West region dominated with the highest sales share at 34.11%, followed by the East region. The Central and South regions contributed less, with the South showing the smallest sales share at 16.88%. This highlights the West and East regions as the most profitable markets.

### Profit Dashboard:

![Profit Dashboard -2](https://github.com/user-attachments/assets/da327cbf-eae0-491f-9467-9897044ded83)

- **Subcategory Comparison by Profit:**  
  Copiers and Accessories emerged as the highest profit-generating subcategories for 2023, with Copiers having the largest profit margins. Phones, Paper, and Appliances also contributed to overall profit, while Fasteners, Envelopes, Labels, and Machines showed losses, indicating the need for strategic review in those categories.
  
- **Segments by Monthly Profit:**  
  The Consumer segment showed significant profit fluctuations, peaking in May, but experiencing losses in February and June. The Corporate segment had a strong peak in October, while the Home Office segment remained more consistent, peaking in December with minimal losses.
  
- **Trends Over Time by Profit:**  
  Profits displayed volatility throughout the year, with spikes above the $3.78K average in months like May and October. However, profits dipped below the average during certain months, particularly early in the year.
  
- **Region-wise Profit:**  
  The West region led in profitability with 29.40% of total profits, followed by the Central and East regions, each contributing over 23%. The South region had the lowest profit share at 22.61%, though still contributed significantly to the total profit.

### Quantity Dashboard:

![Quantity Dashboard -2](https://github.com/user-attachments/assets/47e27254-bc44-4d1d-8b4c-0ea14f78e099)

- **Subcategory Comparison by Quantity:**  
  Binders, Paper, and Art led in the quantity of units sold in 2023, showing significant growth over 2022. On the other hand, Machines, Copiers, and Supplies had the lowest quantities sold, indicating lower demand in these subcategories.
  
- **Segments by Monthly Quantity:**  
  The Consumer segment peaked in May with 0.72K units, while the Corporate segment saw its highest quantity in October with 0.55K units. The Home Office segment remained steady, peaking at 0.24K units in December.
  
- **Trends Over Time by Quantity:**  
  The quantity of products sold varied throughout the year, with an average of 0.24K units. While sales were below average early in the year, the last quarter saw consistent growth with several spikes above the average.
  
- **Region-wise Quantity:**  
  The West region had the largest quantity sold, contributing 30.75% (3.03K units), followed by the East at 28.60% (2.81K units). The Central and South regions contributed the least, with 23.98% (2.36K units) and 16.67% (1.64K units), respectively.

### Customer Dashboard:

![Customer Dashboard](https://github.com/user-attachments/assets/19d3986d-e4f0-4290-b4bb-333324b63201)

- **Customer Distribution by Number of Orders:**  
  Most customers placed either 1 or 2 orders, with 200 customers in each category. As the number of orders increases, fewer customers are seen, with only a small number placing 6 or more orders, highlighting smaller, more frequent purchase habits.
  
- **Top 10 Customers by Profit:**  
  Raymond Buch is the top customer by profit, contributing $6.78K from 3 orders, followed by Hunter Lopez with $5.05K from 2 orders. The top 10 customers represent a mix of high-value and frequent buyers, contributing significantly to the overall profit.
  
- **Trends Over Time by Customer:**  
  The number of active customers fluctuated throughout the year, averaging 31 per period. While early months saw below-average engagement, customer activity increased steadily toward the middle and end of the year, with several spikes exceeding the average.
  
- **Region-wise Customers:**  
  The West region leads with 805 customers, followed by the East with 762. The Central region has 603 customers, and the South has the fewest, with 417, showing higher customer concentration in the West and East regions.

### KPIs :

![Screenshot 2024-09-19 at 11 36 52 PM](https://github.com/user-attachments/assets/6453c441-41f7-4006-9955-13381d748d73)

![Screenshot 2024-09-19 at 11 37 15 PM](https://github.com/user-attachments/assets/40f3e95c-b33f-4491-b2a4-b800d67ca774)

- Total Customers: 693 customers, up by 8.62% from last year, indicating growth in customer base.
- Total Sales Per Customer: $1,058.03, an increase of 10.80%, showing higher spending per customer.
- Total Orders: 1,687 orders, up by 28.29%, reflecting increased customer activity.
- Total Sales: $733.22K, a 20.36% growth, indicating strong revenue performance.
- Total Profit: $93.44K, up 14.24%, though growing slower than sales.
- Total Quantity: 12,476 units, a 26.83% rise, showing higher product demand.

These KPIs show overall positive performance and strong growth across various metrics in 2023.

### Filters :

![Screenshot 2024-09-19 at 11 36 09 PM](https://github.com/user-attachments/assets/2623f611-8c02-4906-997e-3f7cb0cc4134)

- **Year:** Currently set to 2023.
- **Location:** Filters by city, state, and region (set to "All" or "Multiple values").
- **Product:** Filters by sub-category and category (also set to "All" or "Multiple values").

These filters enable targeted analysis by adjusting time, location, and product focus.

### SQL Analysis :

Presented below are the SQL analyses addressing key business questions.

**1.What are the top 3 best-selling products in each category based on total sales?**

![Query_1](https://github.com/user-attachments/assets/d4f4113f-209f-4a02-a12a-ac37f03b41b3)

 ![Screenshot 2024-09-20 at 12 59 41 AM](https://github.com/user-attachments/assets/a78c959b-e982-451a-94b0-1f1b81bbb970)

**Insights:**
  
- Furniture:
HON 5400 Series Task Chairs for Big and Tall is the top-seller with total sales of $21,870.57.
Riverside Palais Royal Lawyers Bookcase Royale Cherry Finish ranks second with $15,610.97 in sales.
Bretford Rectangular Conference Table Tops is the third best-seller with $12,995.28.

- Office Supplies:
Fellowes PB500 Electric Punch Binding Machine leads with total sales of $27,453.38.
GBC DocuBind TL300 Electric Binding System comes second with $19,823.48.
GBC Ibimaster 500 Manual ProClick Binding System ranks third with $19,024.50.

- Technology:
Canon imageCLASS 2200 Advanced Copier is the best-seller with $61,599.83 in sales.
Cisco TelePresence System EX90 Videoconferencing Unit follows with $22,638.48.
Hewlett Packard LaserJet 3310 Copier is third with $18,839.68.

**2.Which customer segment generates the highest total profit?**

![Query_2](https://github.com/user-attachments/assets/8da42bd7-c8b3-4baa-8bce-7aeda0fedb4c)

 ![Screenshot 2024-09-20 at 1 00 41 AM](https://github.com/user-attachments/assets/9ce6475e-c88e-4e64-abea-417568393256)

**Insights:**

- Consumer segment generates the highest total profit, with a profit of $134,119.33.

- Corporate segment comes in second, generating a total profit of $91,779.45.

- Home Office segment generates the lowest total profit, with $60,299.01.

These insights indicate that the Consumer segment is the most profitable, followed by Corporate and Home Office segments.

**3.Which region generates the highest total profit based on customer orders?**

![Query_3](https://github.com/user-attachments/assets/8c631dbf-c28f-4ceb-90f0-e6cca247e0c7)

 ![Screenshot 2024-09-20 at 1 01 30 AM](https://github.com/user-attachments/assets/03a99627-b522-4a87-b419-0ff400dacce6)

**Insights:**
- West region generates the highest total profit of $109,880.

- East region follows with a total profit of $89,278.

- South region ranks third with a total profit of $48,995.

- Central region generates the lowest total profit of $39,706.

These insights show that the West and East regions are the most profitable, while the South and Central regions generate lower profits.

**4.How can we identify the most recent order for each customer, along with their total order count?**

![Query_4](https://github.com/user-attachments/assets/4a33fb3e-3909-4e8f-9ba1-d81df174bbad)

 ![Screenshot 2024-09-20 at 1 02 52 AM](https://github.com/user-attachments/assets/3c22777e-4188-4509-9642-bff1b7bbdd2e)

**Insights:**
- Highest Order Counts:
William Brown has the highest number of orders with 37 orders.
John Leo and Matt Abelman both have 34 orders.
Paul Post and Chloris Katsenstein each have 32 orders.
Edward Hooks and Jonathan Doherty have 31 orders.

- Lower Order Counts:
Many customers have 2 to 3 orders, including Pauline Chand, Paul Knutson, Ritsa Hightower, and Tim Taslimi.
Several customers have made only 1 order, such as Carl Jackson, Jocasta Rupert, Lela Donovan, and Ricardo Emerson.
These insights show a range of customer engagement, from highly frequent buyers like William Brown to those with just a few purchases.

**5.Which products have an average discount greater than 50%, and how are they ranked by their average discount?**

![Query_5](https://github.com/user-attachments/assets/410e2355-c160-4b9e-9e33-840d06d8ca91)

 ![Screenshot 2024-09-20 at 1 51 53 AM](https://github.com/user-attachments/assets/d45d6cb5-e17b-4632-b1fe-7aee71cbbfd1)

**Insights:**
- Top Discounted Product:
Eureka Disposable Bags for Sanitaire Vibra Groomer I Upright Vac has the highest average discount of 80%.

- High Discounts (70-79%):
GBC Plasticlar Binding Covers and GBC VeloBinder Electric Binding Machine both have an average discount of 73%.
Cisco 8961 IP Phone Charcoal, Epson Perfection V600 Photo Scanner, and Lexmark MarkNet N8150 Wireless Print Server have a 70% discount.

- Moderate Discounts (60-69%):
Premier Elliptical Ring Binder Black has a 64% average discount.
Wilson Jones Custom Binder Spines & Labels has a 63% discount.
Avery Triangle Shaped Sheet Lifters Black 2/Pack and Avery Durable Slant Ring Binders each have a 62%discount.

- Lower Discounts (50-59%):
Several products, including Eldon Executive Woodline II Cherry Finish Desk Accessories and Acco PRESSTEX Data Binder with Storage Hooks, have discounts ranging between 51% and 59%.

These insights highlight the most heavily discounted products, which can help identify potential sales trends or inventory clearance items.

**6.Which shipping modes have an average delay greater than 2 days, and how are they ranked by their average delay time?**

![Query_6](https://github.com/user-attachments/assets/ea911d92-6961-4495-b3d8-cc2ce829995e)

 ![Screenshot 2024-09-20 at 1 52 23 AM](https://github.com/user-attachments/assets/4e08c43a-7cf2-479a-b125-0886bfac78df)

**Insights:**

- Standard Class has the longest average delay, with an average delay time of 145.41 days.

- Second Class follows, with an average delay of 96.99 days.

- First Class has the shortest average delay among the shipping modes, with an average delay time of 63.04 days.

These insights suggest that Standard Class experiences the most significant delays, while First Class is relatively quicker but still exceeds the 2-day threshold.

**7.Who are the top 10 customers ranked by total profit, and how much profit has each of them generated?**

![Query_7](https://github.com/user-attachments/assets/b2913f58-42fa-406d-a526-a534b76cb256)

 ![Screenshot 2024-09-20 at 1 52 54 AM](https://github.com/user-attachments/assets/51967b3c-272e-451c-8a7d-1f6a19725a08)

**Insights:**

- Tamara Chand is the most profitable customer, generating a total profit of $8,981.32.

- Raymond Buch ranks second with a total profit of $6,976.09.

- Sanjit Chand follows closely, generating $5,757.42 in total profit.

- Hunter Lopez and Adrian Barton rank fourth and fifth, with profits of $5,622.43 and $5,444.81, respectively.

- Tom Ashbrook ranks sixth, contributing $4,703.84 in profit.

- Shepherd Martinez and Keith Dawkins generate $3,899.91 and $3,038.58, respectively.

- Andy Reiter and Daniel Raglin round out the top 10, with profits of $2,884.61 and $2,869.08, respectively.

These insights show which customers contribute the most to overall profitability, with Tamara Chand leading the group by a significant margin.

**8.Which products have generated total sales of less than $1000, and how are they ranked by their total sales?**

![Query_8](https://github.com/user-attachments/assets/136c6bdd-0b5c-45cf-9aa4-b4d9f424342b)

 ![Screenshot 2024-09-20 at 1 53 22 AM](https://github.com/user-attachments/assets/67cdbfa5-bc7e-4c92-86d0-48ee70fb8b0a)

**Insights:**

- Lowest Sales:
Eureka Disposable Bags for Sanitaire Vibra Groomer I Upright Vac has the lowest total sales with just $1.62.
Avery 5 follows closely with $5.76 in total sales.
Xerox 20 has total sales of $6.48.

- Higher Sales (approaching $1000):
DAX Wood Document Frame has the highest total sales under $1000, with $998.93.
Hon Every-Day Chair Series Swivel Task Chairs and Xerox 1914 each have total sales of $967.85 and $956.3, respectively.

These insights highlight the products with the lowest sales, providing useful information for identifying underperforming items that may need further attention.

**9.Which region has the highest average sales per order?**

![Query_9](https://github.com/user-attachments/assets/f504af53-40db-400e-b8e4-b414178693fa)

 ![Screenshot 2024-09-20 at 1 53 41 AM](https://github.com/user-attachments/assets/e05c5d07-8f5d-4dc7-a9e3-5d09e51475e5)

**Insights:**

- South region has the highest average sales per order at $245.65.

- East region follows with an average sales per order of $236.11.

- West region ranks third with an average of $226.13 per order.

- Central region has the lowest average sales per order at $215.77.

These insights indicate that the South region generates the most revenue per order on average, while the Central region has the lowest average sales per order.

**10. Which product categories generate the highest total profit across all orders?**

![Query_10](https://github.com/user-attachments/assets/17f66a70-69f8-4614-a1a7-29979b227fa9)

 ![Screenshot 2024-09-20 at 1 53 59 AM](https://github.com/user-attachments/assets/bfa81d16-2766-4d04-a7f1-b1a4374f3d26)


**Insights:**
- Technology is the most profitable category, generating a total profit of $153,416.46.

- Office Supplies comes in second, with a total profit of $126,113.43.

- Furniture ranks third, generating a total profit of $20,098.89.

These insights show that Technology leads in profitability, followed by Office Supplies, with Furniture generating significantly lower profits in comparison.

**View : Which orders have a total sales amount greater than $5000, and what are the details of these high-value orders?** 

![Query_11](https://github.com/user-attachments/assets/fd730782-99ac-471c-9ed0-c6c482f00b6f)

![Screenshot 2024-09-20 at 1 56 48 AM](https://github.com/user-attachments/assets/08241a98-2f4f-41bf-9620-e1185477c934)

 ![Screenshot 2024-09-20 at 1 54 36 AM](https://github.com/user-attachments/assets/bad1b983-bb4e-4ec7-b1fd-e8cf21e539f9)

**Insights:**

- Highest Sales:
The highest sales are from Customer ID: TC-20900 with an order of $17,499.95, generating a profit of $8,399.98.
Customer ID: SM-23032 placed an order for $22,638.48, with a profit of $1,811.08.

- Significant Losses:
Customer ID: BM-11140 had a loss of $1,359.99 on an order worth $8,159.95.
Customer ID: GT-16435 incurred a loss of $3,839.99 on a sale of $7,999.98.

- High Profits:
Customer ID: AB-10105 made a profit of $4,946.37 on a sale worth $9,892.74.
Customer ID: BM-11365 earned $4,630.48 on an order worth $9,449.95.

- Mid-Range Sales and Profits:
Customer ID: CM-12385 generated $3,177.48 in profit from a sale of $6,354.95.
Customer ID: TB-21400 earned $2,239.99 in profit from a sale of $6,999.96.

These insights show both high-profit orders and orders that resulted in significant losses. It's useful for identifying which high-value orders may need more attention to mitigate losses or optimize profits.


## Recommendations

- Focus on improving customer retention strategies, especially for high-value customers like Raymond Buch and Hunter Lopez, who contribute significantly to profits. Consider offering loyalty programs or exclusive discounts to incentivize repeat purchases and strengthen relationships with these top contributors.
- To address slower profit growth compared to sales, review pricing strategies and optimize cost management. Focus on reducing operational inefficiencies or negotiating better supplier deals for high-revenue products like Copiers and Accessories to maintain healthy profit margins.
- Increase marketing efforts in top-performing regions like the West and East, tailoring regional promotions to target these high-revenue areas more effectively. At the same time, explore growth opportunities in underperforming regions like the South.
- Given the strong demand for Binders, Paper, and Art, consider expanding the product range or offering bulk deals in these categories to capitalize on growing demand and further increase sales quantity.
- With significant sales spikes during Q4, enhance inventory and logistics planning to ensure timely product availability and delivery during peak demand periods. Focus on seasonal campaigns to maximize sales potential during this crucial time.
- Develop targeted outreach strategies based on customer order behavior. For instance, customers with frequent smaller orders may benefit from subscription models, while those placing larger but infrequent orders could be incentivized through one-time discounts or bundled offers.
- Prioritize marketing and inventory for products with the highest profit margins, such as those in the Technology category, to maximize overall profitability while minimizing resource use.
- Target top-performing customers like Tamara Chand and Raymond Buch with loyalty programs or exclusive offers to encourage repeat purchases and maintain high profitability levels.
- Address delays in Standard and Second Class shipping modes by reviewing logistics and working with carriers to reduce delivery times, which can improve customer satisfaction and retention.
- Regularly review discount practices on heavily discounted products to ensure they drive sufficient sales volume without eroding profit margins. Consider adjusting pricing or promotion strategies for better balance.
- Use historical sales data to forecast product demand across regions, ensuring inventory levels align with customer needs and regional preferences to avoid overstocking or stockouts.
