SELECT payment_method, COUNT(*) AS transaction_count
FROM walmart_sales
GROUP BY payment_method
ORDER BY transaction_count DESC;

