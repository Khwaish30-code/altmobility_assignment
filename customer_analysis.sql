USE alt_mobility;

-- How many orders each customer made
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM customer_orders
GROUP BY customer_id
ORDER BY total_orders DESC;

-- Customers with more than 1 order
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM customer_orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1
ORDER BY total_orders DESC;

-- Count of new customers by month
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    COUNT(DISTINCT customer_id) AS new_customers
FROM customer_orders
GROUP BY order_month
ORDER BY order_month;
