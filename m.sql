CREATE TABLE exam_results (
    student_id INT,
    student_name VARCHAR(50),
    subject VARCHAR(50),
    score INT
);

INSERT INTO exam_results VALUES
(1, 'Ali', 'Math', 92),
(2, 'Vali', 'Math', 76),
(3, 'Hasan', 'Math', 58),
(4, 'Olim', 'Math', 44);

SELECT student_name,
       subject,
       score,
       CASE
           WHEN score >= 90 THEN 'Excellent'
           WHEN score >= 70 THEN 'Good'
           WHEN score >= 50 THEN 'Average'
           ELSE 'Fail'
       END AS grade_level
FROM exam_results
ORDER BY score DESC;
