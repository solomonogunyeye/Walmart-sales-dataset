SELECT
  category,
  SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric) AS total_revenue,
  RANK() OVER (
    ORDER BY SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric) DESC
  ) AS revenue_rank
FROM walmart_sales
GROUP BY category;
