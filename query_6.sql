SELECT group_name, students.student_name FROM groups
JOIN students ON groups.student_member_group = students.student_id
WHERE group_name LIKE "%group - A%"