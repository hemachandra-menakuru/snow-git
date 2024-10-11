CREATE OR ALTER VIEW silver.customer_sales_summary AS
SELECT 
    c.customer_id,
    c.customer_name,
    c.email,
    COUNT(s.sale_id) AS total_sales,
    SUM(s.total_amount) AS total_revenue,
    AVG(s.total_amount) AS average_sale_amount,
    MAX(s.sale_date) AS last_purchase_date,
    MIN(s.sale_date) AS first_purchase_date,
    -- Apply business rules
    CASE 
        WHEN SUM(s.total_amount) >= 10000 THEN 'Platinum'
        WHEN SUM(s.total_amount) >= 5000 THEN 'Gold'
        WHEN SUM(s.total_amount) >= 1000 THEN 'Silver'
        ELSE 'Bronze'
    END AS customer_tier,
    DATEDIFF(day, MIN(s.sale_date), MAX(s.sale_date)) AS customer_lifetime_days,
    SUM(CASE WHEN s.sale_date >= DATEADD(month, -3, CURRENT_DATE()) THEN s.total_amount ELSE 0 END) AS last_3_months_revenue
FROM 
    silver.customers c
LEFT JOIN 
    silver.sales s ON c.customer_id = s.customer_id
GROUP BY 
    c.customer_id, c.customer_name, c.email;