CREATE SCHEMA IF NOT EXISTS "BudgetExpense";

CREATE  TABLE "BudgetExpense".dim_activity ( 
	activitycode         VARCHAR  NOT NULL  ,
	activityname         VARCHAR(100)    ,
	CONSTRAINT pk_dim_activity PRIMARY KEY ( activitycode )
 );

CREATE  TABLE "BudgetExpense".dim_department ( 
	departmentcode       INT  NOT NULL  ,
	departmentname       VARCHAR(100)    ,
	CONSTRAINT pk_dim_department PRIMARY KEY ( departmentcode )
 );

CREATE  TABLE "BudgetExpense".dim_dept_rollup ( 
	dept_rollup          VARCHAR  NOT NULL  ,
	dept_rollup_name     VARCHAR(100)    ,
	CONSTRAINT pk_dim_dept_rollup PRIMARY KEY ( dept_rollup )
 );

CREATE  TABLE "BudgetExpense".dim_expense ( 
	expensecode          VARCHAR  NOT NULL  ,
	expensename          VARCHAR(100)    ,
	CONSTRAINT pk_dim_expensecategory PRIMARY KEY ( expensecode )
 );

CREATE  TABLE "BudgetExpense".dim_fund ( 
	fundcode             VARCHAR  NOT NULL  ,
	fundname             VARCHAR(100)    ,
	CONSTRAINT pk_fundcode PRIMARY KEY ( fundcode )
 );

CREATE  TABLE "BudgetExpense".dim_program ( 
	programcode          VARCHAR  NOT NULL  ,
	programname          VARCHAR(100)    ,
	CONSTRAINT pk_dim_program PRIMARY KEY ( programcode )
 );

CREATE  TABLE "BudgetExpense".dim_unit ( 
	unitcode             VARCHAR  NOT NULL  ,
	unitname             VARCHAR(100)    ,
	CONSTRAINT pk_dim_unit PRIMARY KEY ( unitcode )
 );

CREATE  TABLE "BudgetExpense"."facts_budget/expense" ( 
	fact_id              BIGINT  NOT NULL  ,
	budget_fiscal_year   INT    ,
	thru_quarter         INT    ,
	fiscal_year_id       INT    ,
	dept_rollup          VARCHAR    ,
	dept_rollup_name     VARCHAR(100)    ,
	departmentcode       INT    ,
	departmentname       VARCHAR(100)    ,
	fundcode             VARCHAR    ,
	fundname             VARCHAR(100)    ,
	programcode          VARCHAR    ,
	programname          VARCHAR(100)    ,
	activitycode         VARCHAR    ,
	activityname         VARCHAR(100)    ,
	unitcode             VARCHAR  NOT NULL  ,
	unitname             VARCHAR(100)    ,
	expensecode          VARCHAR    ,
	expensename          VARCHAR(100)    ,
	budget               DECIMAL(20,2)    ,
	expenditures         DECIMAL(20,2)    ,
	budget_deficit       DECIMAL(20,2)    ,
	"key"                VARCHAR    ,
	CONSTRAINT pk_facts PRIMARY KEY ( fact_id, unitcode )
 );
