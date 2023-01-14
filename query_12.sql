--Последнее занятие определяется крайней поставленной оценкой или  можно добавить WHERE courses.course_id = 1
SELECT groups.group_name, students.student_name, g_course_name, grade, grade_time  FROM grades
LEFT JOIN students ON grades.g_student_id = students.student_id
LEFT JOIN courses ON grades.g_course_name = courses.course_name
LEFT JOIN groups ON grades.g_student_id = groups.student_member_group
WHERE groups.group_name LIKE "%group - A%" AND grade_time = (SELECT MAX(grade_time) FROM grades)