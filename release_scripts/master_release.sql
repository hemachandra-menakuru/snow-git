USE DATABASE SNOWGIT;
USE SCHEMA SILVER;

EXECUTE IMMEDIATE FROM @snowgit/branches/"feature/test2"/release_scripts/release_v3.0.sql;