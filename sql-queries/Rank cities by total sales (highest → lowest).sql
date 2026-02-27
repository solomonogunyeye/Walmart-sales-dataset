SELECT
  city,
  SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric) AS total_revenue,
  RANK() OVER (
    ORDER BY SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric) DESC
  ) AS city_rank
FROM walmart_sales
GROUP BY city;
