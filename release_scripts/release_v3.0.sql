

USE DATABASE SNOWGIT;
USE SCHEMA SILVER;
execute immediate from @snowgit/branches/"feature/test3"/silver/tables/customer.sql;
execute immediate from @snowgit/branches/"feature/test3"/silver/oneoff_inserts/insert_customers_v3.0.sql;
execute immediate from @snowgit/branches/"feature/test3"/silver/functions/last_day_of_month.sql;
