USE DATABASE SNOWGIT;
USE SCHEMA SILVER;

BEGIN
  -- Start transaction
  BEGIN TRANSACTION;

  -- Execute release script
  TRY
    EXECUTE IMMEDIATE FROM @snowgit/branches/"feature/test2"/release_scripts/release_v1.0.sql;
  
  -- Catch and handle errors
  CATCH (ERR_CODE ERR_MESSAGE)
    IF (ERR_CODE = 9010) THEN  -- Object already exists
      CONTINUE;
    ELSEIF (ERR_CODE = 9020) THEN  -- Object already dropped
      CONTINUE;
    ELSE
      ROLLBACK;
      RAISE;
    END IF;
  
  -- Commit transaction if successful
  EXCEPTION WHEN NO_ERROR THEN
    COMMIT;
END;