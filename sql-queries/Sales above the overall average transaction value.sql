select 
 invoice_id,
 unit_price,
 product_quantity,
  nullif(unit_price, 'TBA')::numeric * nullif(product_quantity, 'TBA')::numeric as transaction_total
   from walmart_sales
   where(
 nullif(unit_price, 'TBA')::numeric * nullif(product_quantity, 'TBA')::numeric > (
select
  avg(nullif(unit_price, 'TBA')::numeric * nullif(product_quantity, 'TBA')::numeric)
  from walmart_sales
 ))
 order by invoice_id