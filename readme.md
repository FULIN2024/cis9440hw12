# CIS9440 Fulin Li Budget&Expense Project

# Program Budget Operating Budget Vs Expense Raw Data

# Project Overview
[Data Sources](https://data.austintexas.gov/Budget-and-Finance/Program-Budget-Operating-Budget-Vs-Expense-Raw-Dat/g5k8-8sud/about_data)
[API-endpoint] (https://data.austintexas.gov/resource/g5k8-8sud.json)

## Introduction
### Background:
The dataset comprises the current fiscal year's operating budget for the City of Austin, detailing budget allocations and expenditures at the Fund, Department, and Unit levels. This data, updated quarterly, serves informational purposes, with certain Austin Energy budget items excluded due to competitive confidentiality

## Business Problem
### Description:
The analysis focuses on comparing actual expenditures against budget allocations, revealing potential discrepancies and identifying areas of fiscal concern or efficiency. Notably, base wages for personnel are fully budgeted, while actual expenses for leave categories are recorded separately, potentially impacting expenditure distribution.

### Business Requirements:
1. Evaluate the presence of budget deficits across departments, funds, or programs.
2. Identify departments with the highest expenditures.
3. Examine the budget and expenditure relationship across different expense categories to discern variances and trends.

### Potential Benefits:
1. Informed decision-making: Analysis facilitates data-driven decisions for policymakers and stakeholders.
2. Budget efficiency: Identification of areas for improvement enhances budget efficiency and resource allocation.
3. Transparency and accountability: Understanding expenditure patterns fosters transparency and accountability in public spending.
4. Public trust: Enhanced transparency contributes to increased public trust and satisfaction with government financial management

### Challenges:
1. Interpretation complexities: Understanding budget deficits or surpluses requires contextual analysis considering various factors
2. Complex budget categorization: Classification nuances, such as base wages and leave-related expenses, may complicate expenditure tracking
3. Exclusion of certain budget items: Excluded items for competitive reasons may limit the comprehensiveness of the analysis

## Dimensional Model
This project's dimensional model consists of one facts table and seven dimensions tables
Here is the model:
![Dimensional-Model-screenshot](https://github.com/FULIN2024/cis9440hw12/assets/159972695/17dcc483-fa40-4b76-a26e-8ca67af03ba8)

## Methods

### Tools:
- **Data Warehousing**: Use DBSchema to create a data warehouse of PostgreSQL(physical)
- **ETL:Python**: Utilized for data processing and analysis(ex:Pandas, NumPy, and pyarrow)
- **Microsoft Azure**: Azure Blob Storage used for data storage
- **DataGrip**: Used for database management and SQL scripting
- **PostgresSQL**: The Database management system for storing the dimensional model and processed data
- **Business Intelligence**: Use PowerBI for creating data visualizations and dashboards

## Data Processing
Data Extraction
Data Cleaning and Transformation
Data Loaded

## Analysis and Insights
### Visualizations for each KPI:










## Appendices for Visualizations
### Budget_Deficit_by_Department
![Budget_Deficit_by_Department](https://github.com/FULIN2024/cis9440hw12/assets/159972695/d11a3bbe-352d-4316-9399-251bc7e3c296)

### Budget_Deficit_by_Fund
![Budget_Deficit_by_Fund](https://github.com/FULIN2024/cis9440hw12/assets/159972695/21bac8b0-6c1d-4cd4-bdfd-83ffa150595f)

### Budget_Deficit_by_Program
![Budget_Deficit_by_Program](https://github.com/FULIN2024/cis9440hw12/assets/159972695/56032acf-2e80-4329-8abb-d2ba751fb903)

### Expenditures_by_Department
![Expenditures_by_Department](https://github.com/FULIN2024/cis9440hw12/assets/159972695/4bcabed3-d944-4dc2-b623-0ef25409473c)

### Budget&Expenditures_by_ExpenseItem
![Budget&Expenditures_by_ExpenseItem](https://github.com/FULIN2024/cis9440hw12/assets/159972695/548aecee-586c-455e-91b6-b30f5776dedc)


## Deployment
The project was deployed on PowerBI


