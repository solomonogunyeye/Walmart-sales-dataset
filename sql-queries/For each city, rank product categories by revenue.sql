SELECT
  city, category,
  SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric) AS total_revenue,
  RANK() OVER(
  PARTITION BY city
    ORDER BY SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric) DESC
  ) AS category_rank_in_city
FROM walmart_sales
GROUP BY city, category
