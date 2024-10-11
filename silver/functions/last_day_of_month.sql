CREATE OR REPLACE FUNCTION silver.last_day_of_month(input_date DATE)
RETURNS DATE
AS
$$
    DATEADD(DAY, -1, DATEADD(MONTH, 1, DATE_TRUNC('MONTH', input_date)))
$$
;

-- Example usage:
-- SELECT silver.last_day_of_month(CURRENT_DATE());