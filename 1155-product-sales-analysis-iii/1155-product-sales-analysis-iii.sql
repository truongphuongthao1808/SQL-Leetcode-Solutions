# Write your MySQL query statement below
WITH first_year_sold AS
(
    SELECT product_id, year, MIN(year) OVER(PARTITION BY product_id) AS first_year,  quantity, price
    FROM Sales
)
SELECT product_id, first_year, quantity, price
FROM first_year_sold
WHERE year = first_year
;