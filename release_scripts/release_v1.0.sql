

USE DATABASE SNOWGIT;
execute immediate from @snowgit/branches/"feature/test2"/silver/tables/customer.sql;
execute immediate from @snowgit/branches/"feature/test2"/silver/tables/sales.sql;