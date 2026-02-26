SELECT
  payment_method,
 ROUND (AVG(
    NULLIF(unit_price, 'TBA')::numeric
    * NULLIF(product_quantity, 'TBA')::numeric
  )) AS avg_transaction_value
FROM walmart_sales
GROUP BY payment_method;
