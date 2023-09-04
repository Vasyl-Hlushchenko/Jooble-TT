-- Визначити кількість вакансій опублікованих кожною компанією:

SELECT COUNT(*), e.employer_name
FROM vacancies as v
  INNER JOIN employers as e ON v.employer_id = e.id
GROUP BY e.employer_name


-- Вивід:
-- (1, 'BuhOblik')
-- (2, 'CatDog')
-- (1, 'DreamsWork')
-- (1, 'InmicroMin')
-- (4, 'SoftBest')
-- (5, 'SoftDev')
-- (1, 'TOVup')