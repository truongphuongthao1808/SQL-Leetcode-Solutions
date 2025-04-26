# Write your MySQL query statement below
SELECT W2.id
FROM Weather AS W1
JOIN Weather AS W2
    ON DATE_ADD(W1.recordDate, INTERVAL 1 DAY) = W2.recordDate
WHERE W1.temperature < W2.temperature;