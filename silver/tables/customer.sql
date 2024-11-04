CREATE OR ALTER TABLE silver.customers (
    customer_id INTEGER,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    city VARCHAR(255),
    mobilenumber VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --added in feature/test4
    is_active BOOLEAN DEFAULT TRUE --added in feature/test4
);