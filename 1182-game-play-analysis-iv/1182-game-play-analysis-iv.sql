# Write your MySQL query statement below
WITH FirstLogin AS
(
    SELECT player_id, MIN(event_date) AS first_event_date
    FROM Activity
    GROUP BY player_id
), ConsecutivePlayer AS
(
    SELECT f.player_id
    FROM FirstLogin f
    JOIN Activity a
        ON f.player_id = a.player_id
        AND DATE_ADD(f.first_event_date, INTERVAL 1 DAY) = a.event_date
)
SELECT ROUND(COUNT(c.player_id)/COUNT(f.player_id),2) AS fraction
FROM FirstLogin f
LEFT JOIN ConsecutivePlayer c
    ON c.player_id = f.player_id
;