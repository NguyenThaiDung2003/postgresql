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
