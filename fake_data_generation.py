import faker
from random import randint, choice
import uuid


def fake_data_generator():
    lecturers_fake = []
    students_name_fake = []
    courses_fake = []

    fake_object = faker.Faker()

    for _ in range(3, 5+1):
        lecturers_fake.append(fake_object.name())

    for _ in range(30, 50+1):
        students_name_fake.append(fake_object.name())

    for _ in range(5, 8+1):
        courses_fake.append(fake_object.job())

    return lecturers_fake, students_name_fake, courses_fake


def reformate_fake_data_to_insert(
        lecturers,
        students,
        courses,
        degree=('Dr.', 'Candidate of Science', 'Lead Engineer'),
        groups=('group - A', 'group - B', 'group - C')
) -> tuple:
    ref_lecturers = []
    ref_students = []
    ref_courses = []
    ref_group = []
    ref_grades = []

    for lecturer in lecturers:
        ref_lecturers.append((lecturer, choice(degree)))

    for student in students:
        ref_students.append((str(uuid.uuid4().hex), student))

    for course in courses:
        ref_courses.append((course, choice(lecturers)))

    for _ in groups:
        for person in ref_students:
            ref_group.append((choice(groups), person[0]))

    for student in ref_students:
        for course in courses:
            ref_grades.append((student[0], course, randint(1, 100)))

    return ref_lecturers, ref_students, ref_courses, ref_group, ref_grades


if __name__ == "__main__":
    done_lecturers, done_students, done_courses, done_groups, done_grades = reformate_fake_data_to_insert(*fake_data_generator())
    print(done_lecturers, done_students, done_courses, done_groups, done_grades)
