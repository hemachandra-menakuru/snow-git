CREATE OR ALTER TABLE silver.orders (
    order_id INTEGER,
    customer_id INTEGER,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2),
    order_status VARCHAR(50)
);