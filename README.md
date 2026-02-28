# Global Superstore Sales & Profitability Analysis (SQL + Power BI)

End-to-End Business Intelligence project analyzing global retail sales performance, profitability, return impact, and year-over-year growth trends using SQL and Power BI.

## Business Problem
Retail leadership needs visibility into:
- Revenue trends across years
- Profitability by segment and category
- Impact of product returns
- Regional performance differences

This project transforms raw transactional data into actionable business insights.

## Dashboard Preview

### Executive Overview
![Executive Overview](powerbi-dashboard/dashboard-images/Executive_overview.jpg)

### Returns & Profit Impact
![Returns Analysis](powerbi-dashboard/dashboard-images/Returns_Analysis.jpg)

### Revenue Growth & Trend Analysis
![Growth Analysis](powerbi-dashboard/dashboard-images/Growth_Analysis.jpg)

## 🛠 Tools Used
- SQL
- Power BI
- DAX
- Excel/CSV

## 🔍 Key Business Insights
## 🔍 Key Business Insights

- Revenue increased from $2.26M in 2011 to $4.30M in 2014, demonstrating strong and consistent year-over-year growth.

- The Consumer segment contributes the largest share of total revenue, with stable profit margins (~11–12%) across all segments.

- Technology is the most profitable category (13.99% margin), while Furniture generates high revenue but significantly lower margin (6.94%), indicating cost or discount inefficiencies.

- APAC is the top revenue-generating market ($3.59M), showing strong global diversification across EU and US regions as well.

- Profitability declines sharply as discount levels increase. Orders with discounts above 20% frequently generate negative average profit, highlighting pricing risks.

- Several high-value products (e.g., large equipment and furniture items) contribute to cumulative losses, suggesting the need for pricing and cost re-evaluation.

- Regional analysis shows profit imbalance — some regions generate high revenue but relatively low profit, indicating operational optimization opportunities.
  
SQL-Analysis-for-Global-Superstore/
│
├── data/
│   └── ECOMM_DATASET.xlsx
│        ├── EComm_Orders.csv
│        ├── EComm_People.csv
│        └── EComm_Returns.csv
│
├── powerbi-dashboard/
│   ├── Global-Superstore-Sales-Analysis.pbix
│   └── dashboard-images/
│       ├── executive-overview.png 
│       ├── returns-analysis.png 
│       └── growth-analysis.png
│
├── schema.sql
├── data_cleaning.sql
├── analysis_queries.sql
│   ├── kpi_analysis.sql
│   └── advanced_analysis.sql
├── insights.md
└── README.md

## How to Run This Project

1. Run schema.sql to create tables
2. Execute data_cleaning.sql
3. Run analysis_queries.sql for KPI insights
4. Open the Power BI (.pbix) file to explore the dashboard
