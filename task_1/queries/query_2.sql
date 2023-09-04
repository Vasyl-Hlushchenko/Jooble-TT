-- Написати запит який відобразить назви всіх вакансії кожної з компаній:

SELECT v.vacancy_name, e.employer_name
FROM employers as e
  INNER JOIN vacancies as v ON v.employer_id = e.id
GROUP BY v.vacancy_name, e.employer_name


-- Вивід:
-- ('Bukhhalter', 'SoftBest')
-- ('Bukhhalter', 'SoftDev')
-- ('Developer', 'DreamsWork')
-- ('Developer', 'SoftBest')
-- ('Developer', 'SoftDev')
-- ('Driver', 'BuhOblik')
-- ('Driver', 'CatDog')
-- ('Driver', 'SoftDev')
-- ('Manager', 'CatDog')
-- ('Manager', 'InmicroMin')
-- ('Manager', 'TOVup')