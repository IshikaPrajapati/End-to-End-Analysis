CREATE DATABASE SalesDB;

USE SalesDB;
CREATE TABLE sales (
    order_id INT,
    customer_name VARCHAR(100),
    order_date DATE,
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(150),
    quantity INT,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    region VARCHAR(50)
);