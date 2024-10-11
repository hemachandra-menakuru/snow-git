CREATE OR ALTER TABLE silver.sales (
    sale_id INTEGER AUTOINCREMENT START 1 INCREMENT 1,
    customer_id INTEGER,
    product_id INTEGER,
    sale_date DATE DEFAULT CURRENT_DATE(),
    quantity INTEGER NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    total_amount DECIMAL(12,2) GENERATED ALWAYS AS (quantity * unit_price),
    payment_method VARCHAR(50),
    sales_rep_id INTEGER
);