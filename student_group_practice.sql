CREATE DATABASE student_group_practice;
USE student_group_practice;
CREATE TABLE student_groups (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);
INSERT INTO student_groups (name) 
VALUES ('AI');
INSERT INTO student_groups (name) 
VALUES ('Web');
INSERT INTO student_groups (name) 
VALUES ('Embedded');
SELECT * FROM student_groups;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    group_id INT,
    FOREIGN KEY (group_id) REFERENCES student_groups(id)
);
INSERT INTO students (name, age, group_id)
VALUES ('An', 19, 1);
INSERT INTO students (name, age, group_id)
VALUES ('Binh', 20, 2);
INSERT INTO students (name, age, group_id)
VALUES ('Nam', 21, 1);
INSERT INTO students (name, age, group_id)
VALUES ('Lan', 18, 3);
SELECT * FROM students;

SELECT * FROM students
WHERE age >= 20;
SELECT * FROM students
WHERE age >= 20 AND group_id != 1;
SELECT * FROM students
WHERE age >= 20 OR group_id != 1;
SELECT name, age FROM students;
SELECT * FROM students
ORDER BY age DESC
LIMIT 2;

INSERT INTO students (name, age, group_id)
VALUES ('Huy', NULL, 3);
SELECT * FROM students
WHERE age IS NOT NULL;
SELECT * FROM students
WHERE age IS NULL;
UPDATE students
SET age = 19
WHERE name = 'Lan';
INSERT INTO students (name, age, group_id)
VALUES ('TEST', 99, 1);
DELETE FROM students
WHERE name = 'TEST';
SELECT * FROM students;

INSERT INTO student_groups (name)
VALUES ('Photonics');
INSERT INTO students (name, age, group_id)
VALUES ('Trang', 19, 4);

SELECT * FROM students 
WHERE age >= 19 AND group_id != 3
ORDER BY age DESC
LIMIT 3;
UPDATE students
SET age = 20
WHERE name = 'Trang';
DELETE FROM students
WHERE name = 'Trang';
SELECT * FROM students
WHERE name = 'Trang';
INSERT INTO students (name, age, group_id)
VALUES ('Fake', 10, 1);
SELECT students.name, student_groups.name
FROM students
JOIN student_groups
ON students.group_id = student_groups.id;

SELECT students.name, students.age, student_groups.name
FROM students
JOIN student_groups
ON students.group_id = student_groups.id;



