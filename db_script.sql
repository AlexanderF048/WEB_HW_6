-- Table: students

DROP TABLE IF EXISTS students;
CREATE TABLE students (
    id CHAR(36) PRIMARY KEY NOT NULL,
    name CHAR(30)

);

-- Table: groups

DROP TABLE IF EXISTS groups_var;
CREATE TABLE groups_var (
    group_name CHAR(10),
    student_inn CHAR(36),
    FOREIGN KEY (student_inn) REFERENCES students (id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

-- Table: lecturer

DROP TABLE IF EXISTS lecturer;
CREATE TABLE lecturer (
    lecturer_name CHAR(30) PRIMARY KEY NOT NULL,
    academic_degree CHAR(5)
);

-- Table: courses

DROP TABLE IF EXISTS course;
CREATE TABLE course (

    course_name CHAR(15) PRIMARY KEY NOT NULL,
    speaker CHAR(30),
    FOREIGN KEY (speaker) REFERENCES lecturer (lecturer_name)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- Table: grades

DROP TABLE IF EXISTS grades;
CREATE TABLE grades (
    student_id CHAR(36),
    course_id CHAR(15),
    grade INT,
    grade_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES students (id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY (course_id) REFERENCES course (cource_name)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);