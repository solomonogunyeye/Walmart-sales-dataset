# Walmart-sales-dataset
This project involves an in-depth analysis of a Walmart sales dataset of the state of Texas sourced from Kaggle. The dataset contains transactional-level information spanning multiple stores in the state, product categories, and time periods. The primary goal is to uncover insights into sales trends, volatility, and category performance to guide strategic decision-making for inventory, pricing, marketing and future business decision making.

# Dataset-Description
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
| invoice id   | integer   | integer |  unique identifier for each tracnsaction.     |
| Walmart branch      | text  | text         | unique identifier for each walmart branch.       |
| city  |text  | text         | city in Texas where walmart branch is located.        |
| category       | string  |text          | classification of products sold.       |
| unit price | numueric | text | price of each individual product sold.|
| product quantity| integer | text | number of units of a specific product sold.|
|purchase date| date without time zone| text| day of sale.|
| purchase time| time without time zone| time without time zone| time of sale.|
| payment method| text | text | method of product acquisition.| 
| product rating | numeric | numeric| satisfaction level.|
| profit margin| numeric | numeric | profit on each sale.|

DATASET SIZE: 10,O51 rows, 11 columns.
TIME PERIOD COVERED: January 2019 - December 2019.

# Objectives
1. Identify customer satisfaction accross categories.
2. Analyze category revenue, volatility and performance.
3. Identify percentage contribution to revenue of each category.
4. Identify profit generation with each City.

# Data cleaning and reprocessing
1. Removed 1000+ duplicates.
2. All missing values were replaced with "TBA"
3. Confirmed all dates standard to TDD/MM/YYYY.


# Exploratory Data Analysis
  Total revenue: $1,214,825.38

# Category Performance
| Category       | Total Revenue | Average Revenue | Revenue StdDev | Avg Quantity |
|----------------|---------------|----------------|-----------------|-------------|
| Fashion accessories   | $491,833.90    | $107.76       |  $83.591                | 2.13       |
|Electronic accessories     | $78,175.03  | $186.25      |  $184.510                | 3.57        |
| Health and beauty | $46,851.18   | $308.23         |    $226.227              | 5.62       |
| food and beverages       | $53,471.28  | $307.31     |  $235.548                 | 5.47       |
|Sports and travel| $52,497.93 |  $316.25   |    $236.548                |  5.54            |
| Home and Lifestyle| $ 491,996.06|  $108.25     |  $85.263                |   2.13            |


