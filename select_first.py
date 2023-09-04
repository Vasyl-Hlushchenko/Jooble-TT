import sqlite3


def execute_query(sql: str) -> list:
    with sqlite3.connect('jooble.db') as con:
        cur = con.cursor()
        cur.execute(sql)
        return cur.fetchall()

# 1. Отримати всі профіля з назвою професії:
# sql = """
# SELECT p.name, pr.profession_name
# FROM profiles as p
#   INNER JOIN professions as pr ON p.profession_id = pr.id
# GROUP BY p.id;
# """

# 2. Написати запит який відобразить назви всіх вакансії кожної з компаній:
# sql = """
# SELECT e.employer_name, v.vacancy_name
# FROM employers as e
#   INNER JOIN vacancies as v ON v.employer_id = e.id
# GROUP BY v.id;
# """

# 3. Визначити кількість профілів по кожній професії:
# sql = """
# SELECT COUNT(*), pr.profession_name
# FROM profiles as p
#   INNER JOIN professions as pr ON p.profession_id = pr.id
# GROUP BY pr.profession_name;
# """

# 4. Визначити кількість вакансій опублікованих кожною компанією:
# sql = """
# SELECT COUNT(*), e.employer_name
# FROM vacancies as v
#   INNER JOIN employers as e ON v.employer_id = e.id
# GROUP BY e.id;
# """

# 5. Визначити компанію, яка не опублікувала жодної вакансії:
# sql = """
# SELECT e.employer_name, v.vacancy_name
# FROM employers as e
#   LEFT JOIN vacancies as v ON v.employer_id = e.id
# WHERE v.vacancy_name IS NULL;
# """

# 6. Відобразити всі унікальні вакансії (бажано 2-ма способами):
# sql = """
# SELECT DISTINCT
#     vacancy_name
# FROM
#     vacancies;
# """

# sql = """
# SELECT vacancy_name
# FROM vacancies
# GROUP BY vacancy_name;
# """

# 7. Вивести з таблиці профілів максимальний id та дату його створення:
# sql = """
# SELECT max(id), create_date
# FROM profiles
# """

# 8. Вивести всі компанії в яких більше 3 розміщених вакансій:
# sql = """
# SELECT e.employer_name, COUNT(*)
# FROM vacancies as v
#   INNER JOIN employers as e ON v.employer_id = e.id
# GROUP BY e.id
# HAVING COUNT(*)>3;
# """

# 9. Визначити якій компанії теоретично підходить профіль пошукача:
sql = """
SELECT e.employer_name, v.vacancy_name, p.name, p.lastname, pr.profession_name
FROM profiles as p
  INNER JOIN professions as pr ON p.profession_id = pr.id
  INNER JOIN vacancies AS v ON pr.id = v.profession_id
  INNER JOIN employers as e ON v.employer_id = e.id
GROUP BY p.id;
"""

print(execute_query(sql))