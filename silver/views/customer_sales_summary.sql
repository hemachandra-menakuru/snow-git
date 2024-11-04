CREATE OR REPLACE VIEW silver.customer_sales_summary AS
SELECT 
    c.customer_id,
    c.customer_name,
    c.email,
    COUNT(s.sale_id) AS total_sales
FROM 
    silver.customers c
LEFT JOIN 
    silver.sales s ON c.customer_id = s.customer_id
GROUP BY 
    c.customer_id, c.customer_name, c.email;