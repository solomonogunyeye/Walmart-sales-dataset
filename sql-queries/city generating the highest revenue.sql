SELECT
  city,
  SUM(
    NULLIF(unit_price, 'TBA')::numeric
    * NULLIF(product_quantity, 'TBA')::numeric
  ) AS total_revenue
FROM walmart_sales
GROUP BY city
ORDER BY total_revenue DESC
LIMIT 10;
