SELECT g_student_id, g_course_name FROM grades
JOIN students ON grades.g_student_id = students.student_id
WHERE g_student_id LIKE "%33fe11a77e144b628aa632f1601bccab%"