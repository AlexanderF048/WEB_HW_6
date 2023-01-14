SELECT AVG(grade) as AVG_FROM_MASTER, lecturers.lecturer_id, lecturers.lecturer_name, students.student_name AS FOR_STUDENT FROM grades
JOIN students ON grades.g_student_id = students.student_id
RIGHT JOIN courses ON grades.g_course_name = courses.course_name
JOIN lecturers ON courses.speaker = lecturers.lecturer_name
WHERE g_student_id LIKE "%33fe11a77e144b628aa632f1601bccab%" AND lecturers.lecturer_id = 1