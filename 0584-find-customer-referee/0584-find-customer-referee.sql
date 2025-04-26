# Write your MySQL query statement below
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;

-- NULL <> 2 không trả về TRUE, mà là UNKNOWN.
-- SQL chỉ trả về các dòng có điều kiện TRUE, còn FALSE và UNKNOWN sẽ bị loại bỏ.
-- vì vậy cần state rõ ra