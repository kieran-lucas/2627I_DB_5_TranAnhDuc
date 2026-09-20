CREATE DATABASE practice_school;
USE practice_school;
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT
);
INSERT INTO students
VALUE (1, "An", 19);

INSERT INTO students VALUE (2, "Bình", 19);
SELECT * FROM students;
SELECT id, name FROM students;
SELECT id, age FROM students;
SELECT * FROM students 
WHERE age = 19;
SELECT * FROM students
WHERE name = 'An';
INSERT INTO students VALUES (3, 'Nam', 20);
SELECT name, age FROM students;
SELECT * FROM students WHERE age = 20;
UPDATE students SET age = 20 WHERE id = 2;
SELECT * FROM students;
INSERT INTO students VALUE (99, 'Test', 99);
DELETE FROM students WHERE id = 99;
SELECT * FROM students 
WHERE age >= 20 AND id != 2;
SELECT * FROM students
ORDER BY age DESC
LIMIT 2;
SELECT * FROM students 
WHERE age IS NOT NULL;
CREATE DATABASE class;
USE class;
CREATE TABLE student_groups1 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    groups_id INT,
    FOREIGN KEY (groups_id) REFERENCES students(id)
);


