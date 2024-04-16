CREATE SCHEMA INSTANCE;

CREATE TABLE `Budget&Expense_dw-lgl`.INSTANCE.`Facts_Budget/Expense` ( 
	Fact_ID int64 NOT NULL  ,
	Budget numeric  ,
	Expenditures numeric  ,
	Personnel_Costs numeric  ,
	Projected_Expenditures numeric  ,
	Department_Code string  ,
	Fund_Code string  ,
	Program_Code string  ,
	Activity_Code string  ,
	Unit_Code string NOT NULL  ,
	Expense_Code string  ,
	Dept_rollup string  ,
	Expense_date int64  
 );

ALTER TABLE `Budget&Expense_dw-lgl`.INSTANCE.`Facts_Budget/Expense` ADD PRIMARY KEY ( Fact_ID, Unit_Code )  NOT ENFORCED;

CREATE TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Activity ( 
	ActivityCode int64 NOT NULL  ,
	ActivityName string  
 );

ALTER TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Activity ADD PRIMARY KEY ( ActivityCode )  NOT ENFORCED;

CREATE TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Date ( 
	date_id int64 NOT NULL  ,
	year int64  ,
	quarter int64  ,
	monthnumber int64  ,
	daynumber int64  ,
	hournumber int64  ,
	monthname string  ,
	dayname string  ,
	weekoftheyear int64  ,
	weekofthemonth int64  ,
	Expense_date int64  
 );

ALTER TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Date ADD PRIMARY KEY ( date_id )  NOT ENFORCED;

CREATE TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Department ( 
	DepartmentCode int64 NOT NULL  ,
	DepartmentName string  
 );

ALTER TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Department ADD PRIMARY KEY ( DepartmentCode )  NOT ENFORCED;

CREATE TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Dept_rollup ( 
	Dept_rollup int64 NOT NULL  ,
	Dept_rollup_name string  
 );

ALTER TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Dept_rollup ADD PRIMARY KEY ( Dept_rollup )  NOT ENFORCED;

CREATE TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Expense ( 
	ExpenseCode int64 NOT NULL  ,
	ExpenseName string  
 );

ALTER TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Expense ADD PRIMARY KEY ( ExpenseCode )  NOT ENFORCED;

CREATE TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Fund ( 
	FundCode int64 NOT NULL  ,
	FundName string  
 );

ALTER TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Fund ADD PRIMARY KEY ( FundCode )  NOT ENFORCED;

CREATE TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Program ( 
	ProgramCode int64 NOT NULL  ,
	ProgramName string  
 );

ALTER TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Program ADD PRIMARY KEY ( ProgramCode )  NOT ENFORCED;

CREATE TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Unit ( 
	UnitCode int64 NOT NULL  ,
	UnitName string  
 );

ALTER TABLE `Budget&Expense_dw-lgl`.INSTANCE.dim_Unit ADD PRIMARY KEY ( UnitCode )  NOT ENFORCED;
