import sqlite3


def execute_query(sql: str) -> list:
    with sqlite3.connect('task_2/database/jooble.db') as con:
        cur = con.cursor()
        cur.execute(sql)
        return cur.fetchall()


with open("task_2/queries/query_2.sql", "r") as file:
    sql = file.read()


for i in execute_query(sql):
    print(i)