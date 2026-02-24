SELECT
  category,
  SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric) AS category_revenue,
  ROUND(
    100.0 * SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric)
    / SUM(SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric)) OVER (),
    2
  ) AS revenue_percentage
FROM walmart_sales
GROUP BY category;
