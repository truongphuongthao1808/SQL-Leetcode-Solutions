# Write your MySQL query statement below
WITH TotalUsers AS (
    SELECT COUNT(user_id) AS total_users
    FROM Users
)
SELECT r.contest_id,
       ROUND(COUNT(u.user_id) / t.total_users * 100, 2) AS percentage
FROM Register r
JOIN Users u ON u.user_id = r.user_id
JOIN TotalUsers t -- Sử dụng CTE
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id;