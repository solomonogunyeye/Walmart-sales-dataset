SELECT *
FROM walmart_sales
WHERE
  NULLIF(product_quantity, 'TBA')::numeric > 5;
