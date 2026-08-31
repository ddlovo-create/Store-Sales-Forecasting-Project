-- Store Sales Forecasting | SQL Data Preprocessing
-- Filter invalid sales records and construct business features
SELECT 
    store_nbr,
    family,
    date,
    sales,
    onpromotion,
    CASE WHEN onpromotion > 0 THEN 1 ELSE 0 END AS is_promotion,
    DAYOFWEEK(date) AS week_day,
    MONTH(date) AS sale_month
FROM store_sales
WHERE sales > 0;