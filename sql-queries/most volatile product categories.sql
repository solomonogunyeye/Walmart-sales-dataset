SELECT
    category,
    ROUND(
        STDDEV(
            (NULLIF(unit_price, 'TBA')::numeric *
             NULLIF(product_quantity, 'TBA')::numeric)
        ),
        3
    ) AS revenue_stddev
FROM walmart_sales
GROUP BY category
ORDER BY revenue_stddev DESC;