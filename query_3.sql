SELECT groups.group_name, students.student_name, g_course_name, AVG(grade) AS AVG_GRADE FROM grades
LEFT JOIN students ON grades.g_student_id = students.student_id
LEFT JOIN courses ON grades.g_course_name = courses.course_name
LEFT JOIN groups ON grades.g_student_id = groups.student_member_group
WHERE courses.course_id = 1 AND groups.group_name LIKE "%group - A%"

    UNION SELECT groups.group_name, students.student_name, g_course_name, AVG(grade) AS AVG_GRADE FROM grades
    LEFT JOIN students ON grades.g_student_id = students.student_id
    LEFT JOIN courses ON grades.g_course_name = courses.course_name
    LEFT JOIN groups ON grades.g_student_id = groups.student_member_group
    WHERE courses.course_id = 1 AND groups.group_name LIKE "%group -B%"

        UNION SELECT groups.group_name, students.student_name, g_course_name, AVG(grade) AS AVG_GRADE FROM grades
        LEFT JOIN students ON grades.g_student_id = students.student_id
        LEFT JOIN courses ON grades.g_course_name = courses.course_name
        LEFT JOIN groups ON grades.g_student_id = groups.student_member_group
        WHERE courses.course_id = 1 AND groups.group_name LIKE "%group - C%"