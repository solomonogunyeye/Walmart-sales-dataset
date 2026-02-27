Select 
category,
ROUND (avg(product_rating), 2) as avg_rating
 from walmart_sales
 group by category