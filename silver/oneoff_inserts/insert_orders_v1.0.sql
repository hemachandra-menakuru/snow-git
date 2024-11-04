INSERT INTO silver.orders (order_id, customer_id, order_date, total_amount, order_status) VALUES
(1, 1, CURRENT_TIMESTAMP, 99.99, 'Completed'),
(2, 2, CURRENT_TIMESTAMP, 49.50, 'Pending'),
(3, 1, CURRENT_TIMESTAMP, 150.00, 'Completed'),
(4, 3, CURRENT_TIMESTAMP, 75.25, 'Cancelled'),
(5, 4, CURRENT_TIMESTAMP, 200.00, 'Pending');