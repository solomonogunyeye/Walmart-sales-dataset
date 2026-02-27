# Walmart-sales-dataset
This project involves an in-depth analysis of a Walmart sales dataset of the state of Texas sourced from Kaggle. The dataset contains transactional-level information spanning multiple stores in the state, product categories, and time periods. The primary goal is to uncover insights into sales trends, volatility, and category performance to guide strategic decision-making for inventory, pricing, marketing and future business decision making.

# Dataset-Description
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
| invoice id   | integer   | integer |  unique identifier for each transaction.     |
| Walmart branch      | text  | text         | unique identifier for each walmart branch.       |
| city  |text  | text         | city in Texas where walmart branch is located.        |
| category       | string  |text          | classification of products sold.       |
| unit price | numeric | text | price of each individual product sold.|
| product quantity| integer | text | number of units of a specific product sold.|
|purchase date| date without time zone| text| day of sale.|
| purchase time| time without time zone| time without time zone| time of sale.|
| payment method| text | text | method of product acquisition.| 
| product rating | numeric | numeric| satisfaction level.|
| profit margin| numeric | numeric | profit on each sale.|

DATASET SIZE: 10,051 rows, 11 columns.
TIME PERIOD COVERED: January 2019 - December 2019.

# Objectives
1. Identify customer satisfaction across categories.
2. Analyze category revenue, volatility and performance.
3. Identify percentage contribution to revenue of each category.
4. Identify profit generation with each City.

# Data cleaning and reprocessing
1. Removed 1000+ duplicates.
2. All missing values were replaced with "TBA"
3. Confirmed all dates standard to DD/MM/YYYY.
   
   NOTE:
    . data was saved into postgreSQL as text to accomodate missing data being filled with "TBA"
    . Numeric calculations are performed by temporarily casting text fields to numeric types using PostgreSQL ::numeric or ::integer functions.

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
1. Within 99 cities, the ten highest revenue earners per city make up 20% of total revenue.

# Key Findings
1. Electronics category is high-revenue but high-volatility; requires dynamic inventory strategies.
2. Groceries are steady and predictable; ideal for optimizing stock levels to reduce waste.
3. Credit cards dominate high-value transactions; targeted promotions could increase digital wallet adoption.
4. Average transaction value variance suggests promotions and discounts significantly influence purchase behavior.

# Key Notes
1. Missing values may influence validity of Analysis in Practice.
2. Customer loyalty data should be incorporated for targeted marketing.
