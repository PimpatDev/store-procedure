-- สร้าง database และใช้มัน
CREATE DATABASE assignment_stored_procedures;
USE assignment_stored_procedures;

-- สร้างตาราง users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

-- เปลี่ยน delimiter
DELIMITER //

-- สร้าง stored procedure
CREATE PROCEDURE `get_user_by_id` (IN user_id INT)
BEGIN
    SELECT *
    FROM users
    WHERE id = user_id;
END //

-- รีเซ็ต delimiter กลับมาเป็น ;
DELIMITER ;

-- เพิ่มข้อมูลตัวอย่างในตาราง users
INSERT INTO users (name, email) VALUES ('Alice', 'alice@example.com');
INSERT INTO users (name, email) VALUES ('Bob', 'bob@example.com');

-- เรียกใช้ stored procedure
CALL get_user_by_id(2);
