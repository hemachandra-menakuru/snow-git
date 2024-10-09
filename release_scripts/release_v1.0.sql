execute immediate from @snowgit/branches/"feature/test2"/account_db_objects/schemas/create_silver_schema.sql;
execute immediate from @snowgit/branches/"feature/test2"/silver/tables/customer.sql;
execute immediate from @snowgit/branches/"feature/test2"/silver/tables/sales.sql;