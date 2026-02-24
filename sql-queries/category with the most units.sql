select
category,
 sum(nullif(product_quantity, 'TBA')::numeric)
 as total_units
 from walmart_sales
 group by category
 order by total_units desc
 limit 1