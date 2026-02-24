SELECT
  city,
  category,
  COUNT(*) AS repeat_transactions
FROM walmart_sales
GROUP BY city, category
HAVING COUNT(*) > 1
ORDER BY repeat_transactions DESC;
