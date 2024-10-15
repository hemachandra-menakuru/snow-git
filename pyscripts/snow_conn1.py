import snowflake.connector

# Define Snowflake connection parameters
ACCOUNT = 'qg02302.australia-east.azure'
USER = 'SF_DEPLOYMENT'
PASSWORD = ''
WAREHOUSE = 'HM_X_SMALL'
DATABASE = 'SNOWGIT'
SCHEMA = 'GIT_INT'


#https://qg02302.australia-east.azure.snowflakecomputing.com
#SIUVYGH.YO72741
#SIUVYGH.SF_AZURE

try:
    # Establish a connection
    ctx = snowflake.connector.connect(
        user=USER,
        password=PASSWORD,
        account=ACCOUNT,
        warehouse=WAREHOUSE,
        database=DATABASE,
        schema=SCHEMA
    )

    # Create a cursor object
    cs = ctx.cursor()

    # Execute a simple query
    cs.execute("SELECT current_timestamp()")

    # Fetch and print the result
    result = cs.fetchone()
    print(f"Current timestamp: {result[0]}")

    # Close the cursor and connection
    cs.close()
    ctx.close()

    print("Snowflake connection successful!")

except snowflake.connector.errors.DatabaseError as e:
    print(f"Error connecting to Snowflake: {e}")
