-- ============================================
-- SILVER LAYER
-- Data Cleaning & Transformation
-- ============================================

-- Create Silver Schema
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'silver')
BEGIN
    EXEC('CREATE SCHEMA silver');
END
GO

-- Drop table if exists
IF OBJECT_ID('silver.crm_sales_details', 'U') IS NOT NULL
DROP TABLE silver.crm_sales_details;
GO

-- Create Cleaned Silver Table
CREATE TABLE silver.crm_sales_details
(
    sls_ord_num     VARCHAR(50),
    sls_prd_key     VARCHAR(50),
    sls_cust_id     INT,
    sls_ord_dt      INT,
    sls_ship_dt     INT,
    sls_sales       INT,
    sls_quantity    INT,
    sls_price       INT
);
GO

-- Insert Cleaned Data
INSERT INTO silver.crm_sales_details
SELECT
    sls_ord_num,
    sls_prd_key,
    TRY_CAST(sls_cust_id AS INT),
    TRY_CAST(sls_ord_dt AS INT),
    TRY_CAST(sls_ship_dt AS INT),
    TRY_CAST(REPLACE(sls_sales, ',', '') AS INT),
    TRY_CAST(sls_quantity AS INT),
    TRY_CAST(REPLACE(sls_price, ',', '') AS INT)
FROM bronze.crm_sales_details;
GO
