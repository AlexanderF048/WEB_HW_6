-- Table: grades

DROP TABLE IF EXISTS grades;
CREATE TABLE grades (
    grade_id INTEGER PRIMARY KEY AUTOINCREMENT,
    g_student_id CHAR(36),
    g_course_name CHAR(15),
    grade INTEGER,
    grade_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (g_student_id) REFERENCES students (student_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY (g_course_name) REFERENCES courses (course_name)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- Table: groups

DROP TABLE IF EXISTS [groups];
CREATE TABLE [groups] (
    group_id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_name CHAR(10),
    student_member_group CHAR(36),
    FOREIGN KEY (student_member_group) REFERENCES students (student_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

-- Table: students

DROP TABLE IF EXISTS students;
CREATE TABLE students (
    student_id CHAR(36) PRIMARY KEY NOT NULL,
    student_name CHAR(30)
);

-- Table: courses

DROP TABLE IF EXISTS courses;
CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY AUTOINCREMENT,
    course_name CHAR(15),
    speaker CHAR(30),
    FOREIGN KEY (speaker) REFERENCES lecturers (lecturer_name)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
-- Table: lecturer

DROP TABLE IF EXISTS lecturers;
CREATE TABLE lecturers (
    lecturer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    lecturer_name CHAR(30),
    academic_degree CHAR(5)
);

