CREATE SCHEMA IF NOT EXISTS "BudgetExpense";

CREATE  TABLE "BudgetExpense".dim_activity ( 
	activitycode         BIGINT  NOT NULL  ,
	activityname         VARCHAR(100)    ,
	CONSTRAINT pk_dim_activity PRIMARY KEY ( activitycode )
 );

CREATE  TABLE "BudgetExpense".dim_date ( 
	date_id              BIGINT  NOT NULL  ,
	budget_fiscal_year   INT    ,
	thru_quarter         BIGINT    ,
	CONSTRAINT pk_dim_date PRIMARY KEY ( date_id )
 );

CREATE UNIQUE INDEX unq_quaternumber ON "BudgetExpense".dim_date ( thru_quarter );

CREATE  TABLE "BudgetExpense".dim_department ( 
	departmentcode       BIGINT  NOT NULL  ,
	departmentname       VARCHAR(100)    ,
	CONSTRAINT pk_dim_department PRIMARY KEY ( departmentcode )
 );

CREATE  TABLE "BudgetExpense".dim_dept_rollup ( 
	dept_rollup          BIGINT  NOT NULL  ,
	dept_rollup_name     VARCHAR(100)    ,
	CONSTRAINT pk_dim_dept_rollup PRIMARY KEY ( dept_rollup )
 );

CREATE  TABLE "BudgetExpense".dim_expense ( 
	expensecode          BIGINT  NOT NULL  ,
	expensename          VARCHAR(100)    ,
	CONSTRAINT pk_dim_expensecategory PRIMARY KEY ( expensecode )
 );

CREATE  TABLE "BudgetExpense".dim_fund ( 
	fundcode             BIGINT  NOT NULL  ,
	fundname             VARCHAR(100)    ,
	CONSTRAINT pk_fundcode PRIMARY KEY ( fundcode )
 );

CREATE  TABLE "BudgetExpense".dim_program ( 
	programcode          BIGINT  NOT NULL  ,
	programname          VARCHAR(100)    ,
	CONSTRAINT pk_dim_program PRIMARY KEY ( programcode )
 );

CREATE  TABLE "BudgetExpense".dim_unit ( 
	unitcode             BIGINT  NOT NULL  ,
	unitname             VARCHAR(100)    ,
	CONSTRAINT pk_dim_unit PRIMARY KEY ( unitcode )
 );

CREATE  TABLE "BudgetExpense"."facts_budget/expense" ( 
	fact_id              BIGINT  NOT NULL  ,
	budget               DECIMAL(8,2)    ,
	expenditures         DECIMAL(8,2)    ,
	departmentcode       VARCHAR(5)    ,
	fundcode             VARCHAR(5)    ,
	programcode          VARCHAR(5)    ,
	activitycode         VARCHAR(5)    ,
	unitcode             VARCHAR(5)  NOT NULL  ,
	expensecode          VARCHAR(5)    ,
	dept_rollup          VARCHAR(10)    ,
	thru_quarter         BIGINT    ,
	budget_deficit       NUMERIC    ,
	"key"                BIGINT    ,
	CONSTRAINT pk_facts PRIMARY KEY ( fact_id, unitcode )
 );
