SELECT id, name, AVG(grades.grade) AS sort_avg FROM students
LEFT JOIN grades ON students.id = grades.student_id
GROUP BY id
ORDER BY sort_avg DESC
LIMIT 5