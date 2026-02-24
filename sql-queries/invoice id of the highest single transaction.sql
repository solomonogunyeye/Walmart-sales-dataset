SELECT
  invoice_id,
  unit_price,
  product_quantity,
  NULLIF(unit_price, 'TBA')::numeric
  * NULLIF(product_quantity, 'TBA')::numeric AS transaction_total
FROM walmart_sales
WHERE
  NULLIF(unit_price, 'TBA')::numeric
  * NULLIF(product_quantity, 'TBA')::numeric = (
    SELECT
      MAX(
        NULLIF(unit_price, 'TBA')::numeric
        * NULLIF(product_quantity, 'TBA')::numeric
      )
    FROM walmart_sales
  );
