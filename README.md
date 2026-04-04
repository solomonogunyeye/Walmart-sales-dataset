##     Business Problemm

Walmart's Texas operations span 99 cities across multiple product categories.
Without clear visibility into which categories drive revenue, which carry risk,
and how payment behavior varies by transaction value — inventory, pricing, and
marketing decisions remain guesswork.

This analysis answers three core questions:
- Which product categories generate the most revenue and which carry the most risk?
- How does payment method correlate with transaction value?
- Which cities contribute disproportionately to total revenue?

---

##  Dataset
| Detail | Info |
|---|---|
| **Source** | Kaggle |
| **Scope** | Walmart stores across Texas |
| **Size** | 10,051 rows · 11 columns |
| **Period** | January 2019 – December 2019 |
| **Key columns** | Category, Unit Price, Quantity, City, Payment Method, Profit Margin, Rating |

# Data cleaning and reprocessing
1. Removed 1000+ duplicates.
2. All missing values were replaced with "TBA"
3. Confirmed all dates standard to DD/MM/YYYY.
   
# Exploratory Data Analysis
  Total revenue: $1,214,825.38

# Category Performance
| Category       | Total Revenue | Average Revenue | Revenue StdDev | Avg Quantity |
|----------------|---------------|----------------|-----------------|-------------|
| Fashion accessories   | $491,833.90    | $107.76       |  $83.591                | 2.13       |
|Electronic accessories     | $78,175.03  | $186.25      |  $184.510                | 3.57        |
| Health and beauty | $46,851.18   | $308.23         |    $226.227              | 5.62       |
| Food and beverages       | $53,471.28  | $307.31     |  $235.548                 | 5.47       |
|Sports and travel| $52,497.93 |  $316.25   |    $236.548                |  5.54            |
| Home and Lifestyle| $ 491,996.06|  $108.25     |  $85.263                |   2.13            |

# Insights
1. Electronics shows highest revenue volatility, likely due to price disparity between products.
2. Groceries, beauty products and sports products have consistent sales but smaller margins per unit.
   NOTE: the standard deviation is plotted against the average revenue, not to be mistaken with the Total revenue.


# Payment method analysis
1. Credit card with a 40.26% use case has an average transaction value of $114.84.
2. Ewallet with a 37.64% use case has an average transaction value of $117.83.
3. Cash with a 22.09% use case has an average transaction value of $142.77.

# City Revenue Analysis
1. Within 99 cities, the ten highest revenue earners make up 20% of total revenue.

## SQL Approach
Key techniques used:
- Window functions for revenue ranking across cities and categories
- `::numeric` casting for text-stored numeric fields
- Aggregate functions (SUM, AVG, STDDEV) grouped by category and payment method
- CTE structure for multi-step category performance analysis
```sql
-- SELECT
  city, category,
  SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric) AS total_revenue,
  RANK() OVER(
  PARTITION BY city
    ORDER BY SUM(NULLIF(unit_price, 'TBA')::numeric * NULLIF(product_quantity, 'TBA')::numeric) DESC
  ) AS category_rank_in_city
FROM walmart_sales
GROUP BY city, category
```

# Dashboard preview
 https://github.com/solomonogunyeye/Walmart-sales-dataset/blob/main/images/Walmart%20Dataset%20Analysis%20Dashboard.png

# Key Findings
1. Electronics category is high-revenue but high-volatility; requires dynamic inventory strategies.
2. Groceries are steady and predictable; ideal for optimizing stock levels to reduce waste.
3. Credit cards dominate high-value transactions; targeted promotions could increase digital wallet adoption.
4. Customer loyalty data should be incorporated for targeted marketing.
5. Average transaction value variance suggests promotions and discounts significantly influence purchase behavior.

# Key Notes
1. Missing values may influence validity of Analysis in Practice.
2. Data was saved into postgreSQL as text to accomodate missing data being filled with "TBA".
3. Numeric calculations are performed by temporarily casting text fields to numeric types using PostgreSQL ::numeric or ::integer functions.

