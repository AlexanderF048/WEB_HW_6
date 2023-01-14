SELECT lecturer_name, AVG(grade) FROM lecturers
LEFT JOIN courses ON courses.speaker = lecturer_name
LEFT JOIN grades ON grades.g_course_name = courses.course_name
WHERE lecturer_id = 1