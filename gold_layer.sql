-- ============================================
-- GOLD LAYER
-- Business Ready Fact Table
-- ============================================

-- Create Gold Schema
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'gold')
BEGIN
    EXEC('CREATE SCHEMA gold');
END
GO

-- Drop table if exists
IF OBJECT_ID('gold.fact_sales', 'U') IS NOT NULL
DROP TABLE gold.fact_sales;
GO

-- Create Fact Table
CREATE TABLE gold.fact_sales
(
    order_number    VARCHAR(50),
    product_key     VARCHAR(50),
    customer_key    INT,
    order_date      INT,
    shipping_date   INT,
    sales_amount    INT,
    quantity        INT,
    price           INT
);
GO

-- Insert Final Clean Data
INSERT INTO gold.fact_sales
SELECT
    sls_ord_num,
    sls_prd_key,
    sls_cust_id,
    sls_ord_dt,
    sls_ship_dt,
    sls_sales,
    sls_quantity,
    sls_price
FROM silver.crm_sales_details;
GO
