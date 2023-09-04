-- Відобразити всі унікальні вакансії (2-й спосіб):

SELECT
    vacancy_name
FROM
    vacancies
GROUP BY vacancy_name


-- Вивід:
-- ('Bukhhalter',)
-- ('Developer',)
-- ('Driver',)
-- ('Manager',)