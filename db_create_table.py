import sqlite3


def create_table():
    with open('db_script.sql', 'r') as script_file:
        script_data = script_file.read()

    with sqlite3.connect('db_homework_6.db') as db_connection:
        db_cursor = db_connection.cursor()
        db_cursor.executescript(script_data)


if __name__ == "__main__":
    create_table()
