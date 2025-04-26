# Write your MySQL query statement below
SELECT *
FROM 
    (SELECT *
     FROM Cinema
     WHERE description != 'boring' AND id % 2 != 0) AS requirement
ORDER BY rating DESC;