CREATE OR ALTER TABLE silver.customers (
    customer_id INTEGER,
    customer_name VARCHAR,
    email VARCHAR,
    city VARCHAR,
    mobilenumber VARCHAR,
    created_at VARCHAR, ---added in feature/test4
    is_active BOOLEAN DEFAULT TRUE ---added in feature/test4
);