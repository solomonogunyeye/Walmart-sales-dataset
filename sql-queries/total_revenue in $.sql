SELECT
SUM
(nullif(unit_price, 'TBA')::numeric * (nullif(product_quantity, 'TBA')::integer)) AS total_revenue
FROM walmart_sales

