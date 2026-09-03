CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE enrollments (
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(id),
    course_id INT REFERENCES courses(id),
    score NUMERIC(4,2)
);
INSERT INTO students (name) VALUES
('Nguyen Van A'),
('Tran Van B'),
('Le Van C'),
('Pham Van D');

INSERT INTO courses (name) VALUES
('SQL'),
('Java'),
('Python');

INSERT INTO enrollments (student_id, course_id, score) VALUES
(1, 1, 8.5),
(2, 1, 7.0),
(3, 1, 9.0),
(1, 2, 6.5),
(4, 2, 8.0),
(2, 3, 9.5);
SELECT 
    c.name AS course_name,
    COUNT(e.student_id) AS student_count,
    ROUND(AVG(e.score), 2) AS average_score
FROM courses c
JOIN enrollments e 
    ON c.id = e.course_id
JOIN students s 
    ON e.student_id = s.id
GROUP BY c.id, c.name
ORDER BY average_score DESC;