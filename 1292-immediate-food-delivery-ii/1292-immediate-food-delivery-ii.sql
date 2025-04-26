WITH First_order AS (
    SELECT customer_id, MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
)
SELECT 
    ROUND(
        SUM(CASE WHEN d.customer_pref_delivery_date = f.first_order_date THEN 1 ELSE 0 END) / 
        COUNT(first_order_date) *100, 2) 
            AS immediate_percentage
FROM Delivery d
JOIN First_order f
    ON d.order_date = f.first_order_date
    AND d.customer_id = f.customer_id
;

