from db_create_table import create_table
from fake_data_generation import fake_data_generator, reformate_fake_data_to_insert
from db_fill_up import db_filler

if __name__ == "__main__":
    create_table()
    done_lecturers, done_students, done_courses, done_groups, done_grades = reformate_fake_data_to_insert(
        *fake_data_generator())
    #print(done_lecturers, done_students, done_courses, done_groups, done_grades)

    db_filler(done_lecturers, done_students, done_courses, done_groups, done_grades)