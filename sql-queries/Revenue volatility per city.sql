SELECT
  city,
  STDDEV(NULLIF(unit_price,'TBA')::numeric * NULLIF(product_quantity,'TBA')::numeric) AS revenue_stddev
FROM walmart_sales
GROUP BY city
ORDER BY revenue_stddev DESC;
