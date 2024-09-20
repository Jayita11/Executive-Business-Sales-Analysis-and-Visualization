# Executive-Business-Sales-Analysis-and-Visualization


## Project Background

The Sales Performance Management project utilizes data from sales orders, customer behavior, and regional preferences from previous years (2020 up to May 2024), offering critical insights into optimizing product offerings, pricing strategies, and profitability. This project is designed to help business leaders make data-driven decisions to improve revenue, resource allocation, and operational efficiency.

As businesses face increasing complexity with varying customer demands and regional nuances, understanding sales distribution by product category, analyzing profitability across customer segments, and monitoring shipping delays become essential for strategic decision-making. This project aims to provide a comprehensive view of sales operations to help businesses.

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

[ERD.pdf](https://github.com/user-attachments/files/17069967/ERD.pdf)

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
