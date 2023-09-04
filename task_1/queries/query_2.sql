-- Написати запит який відобразить назви всіх вакансії кожної з компаній:

SELECT v.vacancy_name, e.employer_name
FROM employers as e
  INNER JOIN vacancies as v ON v.employer_id = e.id
GROUP BY v.id


-- Вивід:
-- ('Developer', 'SoftDev')
-- ('Developer', 'SoftBest')
-- ('Manager', 'InmicroMin')
-- ('Driver', 'BuhOblik')
-- ('Driver', 'CatDog')
-- ('Manager', 'TOVup')
-- ('Developer', 'SoftDev')
-- ('Developer', 'DreamsWork')
-- ('Manager', 'CatDog')
-- ('Bukhhalter', 'SoftDev')
-- ('Developer', 'SoftBest')
-- ('Bukhhalter', 'SoftDev')
-- ('Bukhhalter', 'SoftBest')
-- ('Driver', 'SoftDev')