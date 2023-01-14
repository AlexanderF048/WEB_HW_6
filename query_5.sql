SELECT courses.course_name, courses.speaker FROM lecturers
FULL JOIN courses ON lecturers.lecturer_name = courses.speaker
WHERE lecturer_id = 1
