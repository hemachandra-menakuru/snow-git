

USE DATABASE SNOWGIT;
USE SCHEMA SILVER;
execute immediate from @snowgit/branches/"feature/test2"/silver/tables/customer.sql;
execute immediate from @snowgit/branches/"feature/test2"/silver/tables/sales.sql;
execute immediate from @snowgit/branches/"feature/test2"/silver/oneoff_inserts/insert_customers_v1.0.sql;