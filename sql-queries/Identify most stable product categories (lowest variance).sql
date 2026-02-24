SELECT
  category,
  VAR_SAMP(NULLIF(unit_price,'TBA')::numeric * NULLIF(product_quantity,'TBA')::numeric) AS revenue_variance
FROM walmart_sales
GROUP BY category
ORDER BY revenue_variance ASC;
