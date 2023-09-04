import sqlite3

profiles = [
    (1, 'Ivan', 'Ivanov', 1, '0979999999', 'ivanov@email.ua', '2021-07-16 13:35:14.483'),
    (2, 'Mykhailo', 'Mykhailov', 2, '0978888888', 'mykhailo@email.ua', '2021-07-12 10:35:15.413'),
    (3, 'Andrew', 'Kryvohliad', 3, '0978788488', 'kryvohliad@email.ua', '2021-07-11 11:33:11.182'),
    (4, 'Volodymyr', 'Miniailo', 2, '0978485848', 'miniailo@email.ua', '2021-05-11 09:22:01.383'),
    (5, 'Sergii', 'Triasylo', 4, '0978998088', 'triasylo@email.ua', '2021-03-16 15:18:05.593'),
    (6, 'Dmytro', 'Priadun', 5, '09784888228', 'priadun@email.ua', '2021-02-16 19:15:59.583'),
    (7, 'Valentina', 'Melnyk', 3, '0978778888', 'melnyk@email.ua', '2021-03-16 14:49:11.432'),
    (8, 'Olga', 'Palii', 4, '0978088088', 'palii@email.ua', '2021-05-16 21:32:18.113'),
    (9, 'Catherine', 'Maliar', 1, '0978888888', 'maliar@email.ua', '2021-06-16 22:55:19.411'),
    (10, 'Elena', 'Ruban', 5, '0978248858', 'ruban@email.ua', '2021-03-16 00:31:45.123'),
    (11, 'Julia', 'Tkach', 5, '0978568788', 'tkach@email.ua', '2021-05-16 03:05:03.427')
]

professions = [
    (1, 'Sql developer', None),
    (2, 'Driver category D', None),
    (3, 'Manager', None),
    (4, 'Junior ASP.NET developer', None),
    (5, 'Bukhhalter', None)
]

vacancies = [
    (1, 'Developer', 1, 1),
    (2, 'Developer', 4, 7),
    (3, 'Manager', 3, 2),
    (4, 'Driver', 2, 3),
    (5, 'Driver', 2, 6),
    (6, 'Manager', 3, 4),
    (7, 'Developer', 4, 7),
    (7, 'Developer', 4, 1),
    (9, 'Developer', 1, 5),
    (10, 'Manager', 3, 6),
    (11, 'Bukhhalter', 5, 1),
    (12, 'Developer', 1, 7),
    (13, 'Bukhhalter', 5, 1),
    (14, 'Bukhhalter', 5, 7),
    (15, 'Driver', 2, 1)
]


employers = [
    (1, 'SoftDev', None),
    (2, 'InmicroMin', None),
    (3, 'BuhOblik', None),
    (4, 'TOVup', None),
    (5, 'DreamsWork', None),
    (6, 'CatDog', None),
    (7, 'SoftBest', None),
    (8, 'PaperCompany', None)
]


def insert_data_to_db() -> None:
    # Створимо з'єднання з нашою БД та отримаємо об'єкт курсору для маніпуляцій з даними

    with sqlite3.connect('jooble.db') as con:

        cur = con.cursor()
        

        # Заповнюємо таблицю профілів. І створюємо скрипт для вставлення, де змінні, які вставлятимемо, відзначимо
        # знаком заповнювача (?)
        sql_to_profiles = """INSERT INTO profiles
                               VALUES (?, ?, ?, ?, ?, ?, ?)"""

        # Для вставлення відразу всіх даних скористаємося методом executemany курсора. Першим параметром буде текст
        # скрипта, а другим - дані (список кортежів)
        cur.executemany(sql_to_profiles, profiles)


        # Далі вставляємо дані про професії. Напишемо для нього скрипт і вкажемо змінні
        sql_to_professions = """INSERT INTO professions
                                VALUES (?, ?, ?)"""

        # Дані були підготовлені заздалегідь, тому просто передаємо їх у функцію
        cur.executemany(sql_to_professions, professions)


        # Далі вставляємо дані про вакансії. Напишемо для нього скрипт і вкажемо змінні
        sql_to_vacancies = """INSERT INTO vacancies(id, vacancy_name, profession_id, employer_id)
                            VALUES (?, ?, ?, ?)"""

        # Дані були підготовлені заздалегідь, тому просто передаємо їх у функцію
        cur.executemany(sql_to_vacancies, vacancies)


        # Останньою заповнюємо таблицю із роботодавцями
        sql_to_employers = """INSERT INTO employers
                              VALUES (?, ?, ?)"""

        # Додаємо дані про роботодавців
        cur.executemany(sql_to_employers, employers)


        # Фіксуємо наші зміни в БД
        con.commit()


if __name__ == "__main__":
    insert_data_to_db()