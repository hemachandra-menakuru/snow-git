

USE DATABASE SNOWGIT;
USE SCHEMA SILVER;
execute immediate from @snowgit/branches/"feature/test2"/silver/tables/customer.sql;
execute immediate from @snowgit/branches/"feature/test2"/silver/functions/last_day_of_month.sql
