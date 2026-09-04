/*
===============================================================
DDL script: Created Bronze Table
===============================================================
Script Purpose:
    This script creats tables in the 'bronze' schema, dropping existing table if they already exist.
    Run this script to re-define the DDL structure of 'bronze' table
===============================================================
*/

IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;

CREATE TABLE bronze.crm_cust_info(
	cus_id INT,
	cus_key NVARCHAR(50),
	cus_firstname NVARCHAR(50),
	cus_lastname NVARCHAR(50),
	cus_marital_status NVARCHAR(50),
	cus_gndr NVARCHAR(50),
	cus_create_date DATE
)

IF OBJECT_ID('bronze.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info(
	prd_id INT,
	prd_key NVARCHAR(50),
	prd_nm NVARCHAR(50),
	prd_cost INT,
	prd_line NVARCHAR(50),
	prd_start_dt DATETIME,
	prd_end_dt DATETIME
);

IF OBJECT_ID('bronze.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details(
	sls_ord_num NVARCHAR(50),
	sla_prd_key NVARCHAR(50),
	sla_cus_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
);

IF OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL
	DROP TABLE bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12(
	cid NVARCHAR(50),
	bdate DATE,
	gen NVARCHAR(50)
);

IF OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL
	DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101(
	cid NVARCHAR(50),
	cntry NVARCHAR(50)
);

IF OBJECT_ID('bronze.erp_px_cat', 'U') IS NOT NULL
	DROP TABLE bronze.erp_px_cat;
CREATE TABLE bronze.erp_px_cat(
	id NVARCHAR(50),
	cat nvarchar(50),
	subcat nvarchar(50),
	maintnance nvarchar(50)
)
    
