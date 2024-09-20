CREATE TABLE Location (
    postal_code VARCHAR(10) PRIMARY KEY,
    city VARCHAR(100),
    state VARCHAR(100),
    region VARCHAR(50),
    country_region VARCHAR(100)
);

CREATE TABLE Products (
    product_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(2000)  -- Increased size to accommodate all details
);


CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE Orders (
    row_id INT PRIMARY KEY,
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    segment VARCHAR(50),
    postal_code VARCHAR(10),
    product_id VARCHAR(50),
    sales DECIMAL(10, 2),
    quantity INT,
    discount DECIMAL(5, 2),
    profit DECIMAL(10, 2)
    
    
);

