/*
Creating database and schemas
======================================================================================================

Script Purpose : 
     This script creates database named DataProject.
     With creatig database the other schemas have also created named with "Bronze", "Silver" and "Gold"

Warning :
      Running this script will give the error as the database is already existed so do not drop this to create 
      oher database with the same name otherwise all the data inside this database will be dropped

*/
============================================================================================================================
--selecting system database to create other database--
     
use master;

create database DataProject;

use DataProject;

create schema bronze;
go
create schema silver;
go
create schema gold;
go


============================================================================================================================

/*
All the tables have been created here 
Tables are:
        bronze.crm_cust_info
        bronze.crm_prd_info
        bronze.crm_sales_details
        bronze.erp_cust_az12
        bronze.erp_loc_A101
        bronze.erp_px_cat_g1v2
*/


/* Creatng the tables */

============================================================================================================================


create table bronze.crm_cust_info(
      cst_id int,
      cst_key varchar(50),	
      cst_firstname	varchar(50),
      cst_lastname	varchar(50),
      cst_marital_status	varchar(50),
      cst_gndr	varchar(50),
      cst_create_date date
);

create table bronze.crm_prd_info(
        prd_id int,
        prd_key	varchar(50),
        prd_nm	varchar(50),
        prd_cost int,
        prd_line varchar(50),	
        prd_start_dt date,
        prd_end_dt date
);

create table bronze.crm_sales_details(
        sls_ord_num	varchar(50),
        sls_prd_key	varchar(50),
        sls_cust_id	int,
        sls_order_dt int,	
        sls_ship_dt	int,
        sls_due_dt	int,
        sls_sales	int,
        sls_quantity int,
        sls_price int
);

create table bronze.erp_cust_az12(
        CID varchar(50),
        BDATE date,
        GEN varchar(50)
);

create table bronze.erp_loc_A101(
        CID varchar(50),	
        CNTRY varchar(50)
);


create table bronze.erp_px_cat_g1v2(
        ID varchar(50),
        CAT varchar(50),
        SUBCAT	varchar(50),
        MAINTENANCE varchar(50)
);



