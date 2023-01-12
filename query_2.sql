SELECT student_id, students.name, course_id, MAX(grade) FROM grades
LEFT JOIN students ON grades.student_id = students.id
WHERE course_id  LIKE '%ivil engineer, consulting%'