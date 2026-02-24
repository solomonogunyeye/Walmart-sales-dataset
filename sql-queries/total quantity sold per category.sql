select
 category,
 sum(nullif(product_quantity, 'TBA')::numeric)
 as total_quantity_sold
 from walmart_sales
 group by category