SELECT student_id , student_name , AVG(grades.grade) AS sort_avg FROM students
LEFT JOIN grades ON students.student_id = grades.g_student_id
GROUP BY student_id
ORDER BY sort_avg DESC
LIMIT 5