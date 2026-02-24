SELECT
  city,
  payment_method,
  SUM(NULLIF(unit_price,'TBA')::numeric * NULLIF(product_quantity,'TBA')::numeric) AS total_revenue
FROM walmart_sales
GROUP BY city, payment_method
ORDER BY city, total_revenue DESC;
