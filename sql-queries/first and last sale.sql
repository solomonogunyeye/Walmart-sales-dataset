select
min(purchase_date) as first_sale,
max(purchase_date) as last_sale
from walmart_sales