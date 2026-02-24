select 
category,
ROUND (avg(product_rating)) as avg_rating
 from walmart_sales
 group by category