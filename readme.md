# CIS9440 Fulin Li Budget&Expense Project

### Program Budget Operating Budget Vs Expense Raw Data

## Project Overview
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
![Dimensional-Model-screenshot](https://github.com/FULIN2024/cis9440hw12/assets/159972695/4cdfb42b-40f1-49c5-a0e3-dd621b3b03c0)


## Methods

### Tools:
- **Data Warehousing**: Use DBSchema to create a data warehouse of PostgreSQL(physical)
- **ETL:Python**: Utilized for data processing and analysis(ex:Pandas, NumPy, and pyarrow)
- **Microsoft Azure**: Azure Blob Storage used for data storage
- **DataGrip**: Used for database management and SQL scripting
- **PostgresSQL**: The Database management system for storing the dimensional model and processed data
- **Business Intelligence**: Use PowerBI for creating data visualizations and dashboards

## Data Processing
Data Extraction,
Data Cleaning and Transformation,
Data Loaded

## Analysis and Insights
### Visualizations for each KPI:

#### Analysis of Budget Deficit by Department: (See fig1 below in Appendices)
The study of the most struggling departments helps the decision-makers and managers in the identification of these departments and the subsequent budget adjustments or resources reallocation for them.
Key findings:
Departments with Significant Deficits: The biggest is “Austin Energy”, with a surplus far smaller than those of others, almost in the $0.6 billion. This is opposite to “Austin Water”, and “Aviation”
Departments with Minimal Deficits: Such as “Planning and Zoning CIPS” and “Austin Code” which are the objects where the budget deficit is nearly zero (Full fig please check powerbi file)
Conclusions:
For the departments that have no deficits, it could be possible to keep the status quo or to copy their budget management ways in other departments to boost the financial situation.
In departments where there is a considerable shortage, it is wise to review and reduce spending on activities that are not core to the department's function

#### Analysis of Budget Deficit by Fund: (See fig2 below in Appendices)
Key findings:
Funds with Significant Deficits: The “General Fund” has the largest deficit, close to $0.8 billion, followed by the “Austin Energy Fund”
Funds with Minimal Deficits: “Police Federal Grant Fund” and “Convention Center Department”, with deficits nearly approaching zero
Funds with Minimal Deficits: Close to zero, it is “General SVC Inventories" and "Water Inventory Fund", with the deficits nearly reaching zero (Full fig please check powerbi file)
Conclusion: The energy and water sectors face significant financial challenges in their operations

#### Analysis of Budget Deficit by Program:(See fig3 below in Appendices)
Key findings:
Programs with Significant Deficits: “The “Transfer,Debt Service, And other requirements” program is the one with the highest deficit, which is more than $1.5 billion
Programs with Minimal Deficits: Examples such as "Power Supply", where the deficits are nearly zero
Conclusion: The distribution of deficits might be a sign that certain important public service areas (for example, emergency services, housing, and power supply) are in need of investments that are far higher than the currently allocated budget


#### Analysis of Expenditures by Department: (See fig4 below in Appendices)
Key findings:
Departments with the Highest Expenditures: "Austin Energy" stands out as the department with the highest expenditure, accounting for 17.93% of the total. Following closely is "Austin Water", which accounts for 11.2% of the overall budget. Notable departments such as "Police" (5.77%), and Fire (4.16%) also make up a substantial part of the budget, reflecting their importance in city operations
Conclusion: High-expenditure departments like Austin Energy and Austin Water may require more resources to maintain operations, which could be part of the reason for their significant budget deficits

#### Analysis of Budget and Expenditures by Expense Item: (See fig5 below in Appendices)
Key findings & Conclusion:
Top Expenses Items: 
"Regular Wages Full-Time": This thing demonstrates the highest spend, thus it has greatly crossed its budget. This suggests a major allocation of funds towards full-time wages, which could indicate higher than expected staffing costs or perhaps extensive overtime expenditures
"Regular Services Other": Besides, it demonstrates significant expenses, nevertheless, it is more in line with the intended budget, hence indicating that the managers are able to better control these expenses than full-time wages
Expense Items Exceeding Budget:
Several expense items like "Interest Expense" and "Pension Medical Premiums" appear to exceed their budget allocations, highlighting areas where financial planning may need adjustment
Expense Items with Lower Expenditures:
There shows some like "Consulting Services" and "Maintenance Supplies" where actual expenditures are significantly below the budget, suggesting potential overestimation in budgeting or successful cost-saving measures in these areas




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


