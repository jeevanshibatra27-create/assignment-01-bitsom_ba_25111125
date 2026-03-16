-- Dimension Tables
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(100)
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(255),
    store_city VARCHAR(100)
);

CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    date DATE,
    day INT,
    month INT,
    year INT,
    quarter INT
);

-- Fact Table
CREATE TABLE fact_sales (
    transaction_id VARCHAR(50) PRIMARY KEY,
    product_id INT,
    store_id INT,
    date_id INT,
    units_sold INT,
    unit_price DECIMAL(10, 2),
    total_revenue DECIMAL(15, 2),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);

-- Cleaned Sample Data Insertion

-- dim_product
INSERT INTO dim_product VALUES (1, 'Speaker', 'ELECTRONICS');
INSERT INTO dim_product VALUES (2, 'Tablet', 'ELECTRONICS');
INSERT INTO dim_product VALUES (3, 'Phone', 'ELECTRONICS');
INSERT INTO dim_product VALUES (4, 'Smartwatch', 'ELECTRONICS');
INSERT INTO dim_product VALUES (5, 'Atta 10kg', 'GROCERY');
INSERT INTO dim_product VALUES (6, 'Jeans', 'CLOTHING');

-- dim_store
INSERT INTO dim_store VALUES (1, 'Chennai Anna', 'Chennai');
INSERT INTO dim_store VALUES (2, 'Delhi South', 'Delhi');
INSERT INTO dim_store VALUES (3, 'Bangalore MG', 'Bangalore');
INSERT INTO dim_store VALUES (4, 'Pune FC Road', 'Pune');

-- dim_date
INSERT INTO dim_date VALUES (13, '2023-01-15', 15, 1, 2023, 1);
INSERT INTO dim_date VALUES (29, '2023-02-05', 5, 2, 2023, 1);
INSERT INTO dim_date VALUES (136, '2023-08-29', 29, 8, 2023, 3);
INSERT INTO dim_date VALUES (200, '2023-12-12', 12, 12, 2023, 4);

-- fact_sales (10 cleaned rows)

INSERT INTO fact_sales VALUES ('TXN5000', 1, 1, 136, 3, 49262.78, 147788.34);
INSERT INTO fact_sales VALUES ('TXN5001', 2, 1, 200, 11, 23226.12, 255487.32);
INSERT INTO fact_sales VALUES ('TXN5002', 3, 1, 29, 20, 48703.39, 974067.80);
INSERT INTO fact_sales VALUES ('TXN5003', 4, 1, 13, 10, 58851.01, 588510.10);
INSERT INTO fact_sales VALUES ('TXN5004', 5, 2, 29, 8, 2500.00, 20000.00);
INSERT INTO fact_sales VALUES ('TXN5005', 6, 2, 136, 6, 3000.00, 18000.00);
INSERT INTO fact_sales VALUES ('TXN5006', 1, 3, 200, 4, 49262.78, 197051.12);
INSERT INTO fact_sales VALUES ('TXN5007', 2, 3, 13, 7, 23226.12, 162582.84);
INSERT INTO fact_sales VALUES ('TXN5008', 3, 4, 29, 9, 48703.39, 438330.51);
INSERT INTO fact_sales VALUES ('TXN5009', 4, 4, 136, 5, 18000.00, 90000.00);
