SELECT city, COUNT(*) AS transaction_count_by_city
FROM walmart_sales
GROUP BY city
ORDER BY transaction_count_by_city DESC;

