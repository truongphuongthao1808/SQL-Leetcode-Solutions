# Write your MySQL query statement below
SELECT unique_id, name
FROM Employees
LEFT JOIN EmployeeUNI
    ON Employees.id = EmployeeUNI.id;

-- có những người không có unique_id nên phải lấy left table làm chính 
-- để giữ được đầy đủ tên/thông tin
