# Walmart-sales-dataset
This project involves an in-depth analysis of a Walmart sales dataset of the state of Texas sourced from Kaggle. The dataset contains transactional-level information spanning multiple stores in the state, product categories, and time periods. The primary goal is to uncover insights into sales trends, volatility, and category performance to guide strategic decision-making for inventory, pricing, marketing and future business decision making.

# Dataset-Description
| Column name      | Data-Type | Data-Type Saved in PostgreSQL  | Description |
|----------------|---------------|----------------|-------------|
| invoice id   | integer   | integer |  unique identifier for each tracnsaction     |
| Walmart branch      | text  | text         | unique identifier for each walmart branch       |
| city  |text  | text         | city in Texas where walmart branch is located         |
| category       | string  |text          | classification of products sold       |
| unit price | numueric | text | price of each individual product sold|
| product quantity| integer | text | number of units of a specific product sold|
|purchase date| date without time zone| text| day of sale|
| purchase time| time without time zone| time without time zone| time of sale|
| payment method| text | text | method of product acquisition| 
| product rating | numeric | numeric| satisfaction level|
| profit margin| numeric | numeric | profit on each sale|
