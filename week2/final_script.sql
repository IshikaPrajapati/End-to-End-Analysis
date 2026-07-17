USE SalesDB;
SELECT * FROM sales;

SELECT customer_name,
       product_name,
       total_price
FROM sales;

SELECT *
FROM sales
WHERE region = 'East';

SELECT *
FROM sales
WHERE category = 'Furniture';

SELECT *
FROM sales
ORDER BY total_price DESC;

SELECT *
FROM sales
ORDER BY total_price ASC;

SELECT category,
       SUM(total_price) AS Total_Sales
FROM sales
GROUP BY category;

SELECT region,
       SUM(total_price) AS Revenue
FROM sales
GROUP BY region;

SELECT COUNT(order_id) AS Total_Orders
FROM sales;

SELECT category,
       COUNT(order_id) AS Total_Orders
FROM sales
GROUP BY category;

SELECT SUM(total_price) AS Total_Revenue
FROM sales;

SELECT AVG(total_price) AS Average_Order_Value
FROM sales;

SELECT AVG(quantity) AS Average_Quantity
FROM sales;

SELECT customer_name,
       SUM(total_price) AS Total_Spent
FROM sales
GROUP BY customer_name
ORDER BY Total_Spent DESC
LIMIT 10;

SELECT product_name,
       SUM(total_price) AS Revenue
FROM sales
GROUP BY product_name
ORDER BY Revenue DESC
LIMIT 10;

SELECT category,
       SUM(total_price) AS Revenue
FROM sales
GROUP BY category
ORDER BY Revenue DESC;

SELECT region,
       SUM(total_price) AS Revenue
FROM sales
GROUP BY region
ORDER BY Revenue DESC;

SELECT order_id,
       customer_name,
       total_price,
       CASE
           WHEN total_price >= 1000 THEN 'High Value'
           WHEN total_price >= 500 THEN 'Medium Value'
           ELSE 'Low Value'
       END AS Order_Category
FROM sales;

SELECT
CASE
    WHEN total_price >=1000 THEN 'High Value'
    WHEN total_price >=500 THEN 'Medium Value'
    ELSE 'Low Value'
END AS Order_Category,
COUNT(*) AS Total_Orders
FROM sales
GROUP BY Order_Category;

SELECT customer_name,
       product_name,
       total_price
FROM sales
WHERE total_price >
(
SELECT AVG(total_price)
FROM sales
);

SELECT *
FROM sales
WHERE total_price =
(
SELECT MAX(total_price)
FROM sales
WHERE total_price <
(
SELECT MAX(total_price)
FROM sales
)
);

SELECT customer_name,
       SUM(total_price) AS Total_Spent
FROM sales
GROUP BY customer_name
HAVING SUM(total_price) >
(
SELECT AVG(total_price)
FROM sales
);

SELECT s1.order_id,
       s1.customer_name,
       s2.region
FROM sales s1
JOIN sales s2
ON s1.order_id = s2.order_id;

SELECT customer_name,
       SUM(total_price) AS Total_Spent
FROM sales
GROUP BY customer_name
ORDER BY Total_Spent DESC
LIMIT 10;

SELECT AVG(total_price) AS Average_Order_Value
FROM sales;

