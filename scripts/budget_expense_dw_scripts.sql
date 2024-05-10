CREATE SCHEMA IF NOT EXISTS "the_budget_expense";

CREATE  TABLE "the_budget_expense".dim_the_activity (
	the_activity_code         VARCHAR(100)  ,
	the_activity_name         VARCHAR(100)    ,
	CONSTRAINT pk_dim_the_activity PRIMARY KEY ( the_activity_code )
 );
CREATE  TABLE "the_budget_expense".dim_department (
	the_department_code       INT  NOT NULL  ,
	the_department_name       VARCHAR(100)    ,
	CONSTRAINT pk_dim_department PRIMARY KEY ( the_department_code )
 );

CREATE  TABLE "the_budget_expense".dim_dept_rollup (
	the_dept_rollup          VARCHAR(100)  ,
	the_dept_rollup_name     VARCHAR(100)    ,
	CONSTRAINT pk_dim_dept_rollup PRIMARY KEY ( the_dept_rollup )
 );

CREATE  TABLE "the_budget_expense".dim_expense (
	the_expense_code          VARCHAR(100)  ,
	the_expense_name          VARCHAR(100)    ,
	CONSTRAINT pk_dim_expense PRIMARY KEY ( the_expense_code )
 );

CREATE  TABLE "the_budget_expense".dim_fund (
	the_fund_code             VARCHAR(100)  ,
	the_fund_name             VARCHAR(100)    ,
	CONSTRAINT pk_dim_fund PRIMARY KEY ( the_fund_code )
 );

CREATE  TABLE "the_budget_expense".dim_program (
	the_program_code          VARCHAR(100)  ,
	the_program_name          VARCHAR(100)    ,
	CONSTRAINT pk_dim_program PRIMARY KEY ( the_program_code )
 );

CREATE  TABLE "the_budget_expense".dim_unit (
	the_unit_code             VARCHAR(100)  ,
	the_unit_name             VARCHAR(100)    ,
	CONSTRAINT pk_dim_unit PRIMARY KEY ( the_unit_code )
 );

CREATE  TABLE "the_budget_expense".dim_facts (
	the_fact_id              INT  ,
	the_budget_fiscal_year   INT    ,
	the_thru_quarter         INT    ,
	the_dept_rollup          VARCHAR    ,
	the_dept_rollup_name     VARCHAR(100)    ,
	the_department_code       INT    ,
	the_department_name       VARCHAR(100)    ,
	the_fund_code             VARCHAR    ,
	the_fund_name             VARCHAR(100)    ,
	the_program_code          VARCHAR    ,
	the_program_name          VARCHAR(100)    ,
	the_activity_code         VARCHAR    ,
	the_activity_name         VARCHAR(100)    ,
	the_unit_code             VARCHAR(100)  ,
	the_unit_name             VARCHAR(100)    ,
	the_expense_code          VARCHAR    ,
	the_expense_name          VARCHAR(100)    ,
	the_budget               DECIMAL(20,2)    ,
	the_expenditures         DECIMAL(20,2)    ,
	the_budget_deficit       DECIMAL(20,2)    ,
	"the_key"                VARCHAR    ,
	CONSTRAINT pk_dim_facts PRIMARY KEY ( the_fact_id, the_unit_code )
 );