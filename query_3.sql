SELECT student_id, students.name, course_id, AVG(grade) AS AVG_GRADE, groups_var.group_name FROM grades
LEFT JOIN students ON grades.student_id = students.id
LEFT JOIN groups_var ON grades.student_id = groups_var.student_inn
WHERE course_id  LIKE '%ivil engineer, consulting%' AND groups_var.group_name LIKE '%group - A%'