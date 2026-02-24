SELECT ROUND (AVG(nullif(unit_price, 'TBA')::numeric)) AS avg_unit_price
FROM walmart_sales;
