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