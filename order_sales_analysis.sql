USE alt_mobility;

-- Order count by status 
SELECT 
    order_status, 
    COUNT(*) AS order_count
FROM customer_orders
GROUP BY order_status
ORDER BY order_count DESC;

-- Total revenue from all orders
SELECT 
    SUM(order_amount) AS total_revenue
FROM customer_orders;

-- Revenue per month
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    SUM(order_amount) AS monthly_revenue
FROM customer_orders
GROUP BY order_month
ORDER BY order_month;
