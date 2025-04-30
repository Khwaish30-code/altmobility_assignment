USE alt_mobility;

-- Count of payments by status
SELECT 
    payment_status,
    COUNT(*) AS payment_count
FROM payments
GROUP BY payment_status
ORDER BY payment_count DESC;

-- Monthly failed payments
SELECT 
    DATE_FORMAT(payment_date, '%Y-%m') AS payment_month,
    COUNT(*) AS failed_payments
FROM payments
WHERE payment_status = 'failed'
GROUP BY payment_month
ORDER BY payment_month;
