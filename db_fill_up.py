import sqlite3
import pprint

from fake_data_generation import fake_data_generator, reformate_fake_data_to_insert


def db_filler(lecturers, students, courses, groups, grades):
    with sqlite3.connect('db_homework_6.db') as db_connection:
        db_cursor = db_connection.cursor()

        sql_to_groups_var = """INSERT INTO groups_var(group_name, student_inn)
                                       VALUES (?, ?)"""
        db_cursor.executemany(sql_to_groups_var, groups)

        sql_to_lecturers = """INSERT INTO lecturer(lecturer_name, academic_degree)
                                       VALUES (?, ?)"""
        db_cursor.executemany(sql_to_lecturers, lecturers)

        sql_to_students = """INSERT INTO students(id, name)
                                       VALUES (?, ?)"""
        db_cursor.executemany(sql_to_students, students)

        sql_to_courses = """INSERT INTO course(course_name, speaker)
                                       VALUES (?, ?)"""
        db_cursor.executemany(sql_to_courses, courses)

        sql_to_grades = """INSERT INTO grades(student_id, course_id, grade)
                                       VALUES (?, ?, ?)"""
        db_cursor.executemany(sql_to_grades, grades)

        db_connection.commit()




if __name__ == "__main__":
    done_lecturers, done_students, done_courses, done_groups, done_grades = reformate_fake_data_to_insert(*fake_data_generator())
    print(done_lecturers, done_students, done_courses, done_groups, done_grades)

    db_filler(done_lecturers, done_students, done_courses, done_groups, done_grades)
