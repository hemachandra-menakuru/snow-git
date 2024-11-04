

USE DATABASE SNOWGIT;
USE SCHEMA SILVER;

execute immediate from @snowgit/branches/"feature/test4"/silver/tables/orders.sql;
execute immediate from @snowgit/branches/"feature/test4"/silver/oneoff_inserts/insert_orders_v1.0.sql;
execute immediate from @snowgit/branches/"feature/test4"/silver/oneoff_inserts/insert_customers_v4.0.sql;