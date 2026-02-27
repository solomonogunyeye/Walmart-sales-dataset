SELECT
  payment_method,
  ROUND(AVG(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric), 2) AS avg_transaction_value,
  ROUND(
    SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric) 
    / SUM(SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric)) OVER () 
    * 100, 
    2
  ) AS sales_percentage
FROM walmart_sales
GROUP BY payment_method
ORDER BY sales_percentage DESC;