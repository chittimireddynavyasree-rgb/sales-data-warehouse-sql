-- ============================================
-- BRONZE LAYER
-- Raw Data Load from CSV
-- ============================================

-- Create Bronze Schema
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'bronze')
BEGIN
    EXEC('CREATE SCHEMA bronze');
END
GO

-- Drop table if exists
IF OBJECT_ID('bronze.crm_sales_details', 'U') IS NOT NULL
DROP TABLE bronze.crm_sales_details;
GO

-- Create Bronze Table (Raw Data as VARCHAR)
CREATE TABLE bronze.crm_sales_details
(
    sls_ord_num     VARCHAR(50),
    sls_prd_key     VARCHAR(50),
    sls_cust_id     VARCHAR(50),
    sls_ord_dt      VARCHAR(50),
    sls_ship_dt     VARCHAR(50),
    sls_sales       VARCHAR(50),
    sls_quantity    VARCHAR(50),
    sls_price       VARCHAR(50)
);
GO

-- Load Data from CSV
BULK INSERT bronze.crm_sales_details
FROM 'C:\crm_sales_details.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2
