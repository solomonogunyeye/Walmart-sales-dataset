SELECT
  category,
  ROUND(AVG(
    NULLIF(unit_price, 'TBA')::numeric
    * NULLIF(product_quantity, 'TBA')::numeric
  ), 2) AS average_revenue
FROM walmart_sales
GROUP BY category
ORDER BY average_revenue DESC;
