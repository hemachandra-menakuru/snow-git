USE DATABASE SNOWGIT;
USE SCHEMA SILVER;

EXECUTE IMMEDIATE FROM @snowgit/branches/"feature/test4"/release_scripts/release_v4.0.sql;