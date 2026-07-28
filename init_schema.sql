-- AtliQ Mart Database Schema Initialization
-- Destination Cloud Host: Supabase (PostgreSQL)

-- 1. Create Dimension Targets Table
CREATE TABLE dim_targets (
    customer_id VARCHAR(50),
    ontime_target_pct INT,
    infull_target_pct INT,
    otif_target_pct INT,
    PRIMARY KEY (customer_id)
);

-- 2. Create Central Fact Orders Table
CREATE TABLE fact_orders (
    order_id VARCHAR(50),
    customer_id VARCHAR(50),
    order_placement_date DATE,
    product_id VARCHAR(50),
    order_qty INT,
    delivery_qty INT,
    on_time INT,
    in_full INT,
    otif INT,
    PRIMARY KEY (order_id, product_id)
);

-- 3. Sample Analytic Query for Service Levels (OTIF% Calculation)
SELECT 
    customer_id,
    ROUND(AVG(on_time) * 100, 2) AS actual_ontime_pct,
    ROUND(AVG(in_full) * 100, 2) AS actual_infull_pct,
    ROUND(AVG(otif) * 100, 2) AS actual_otif_pct
FROM fact_orders
GROUP BY customer_id;
