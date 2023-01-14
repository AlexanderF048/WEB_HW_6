SELECT g_student_id, students.student_name, g_course_name, MAX(grade) AS Higher_grade FROM grades
LEFT JOIN students ON grades.g_student_id = students.student_id
LEFT JOIN courses ON grades.g_course_name = courses.course_name
WHERE courses.course_id = 1