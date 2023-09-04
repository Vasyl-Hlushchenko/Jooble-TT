-- Визначити кількість вакансій опублікованих кожною компанією:

SELECT COUNT(*), e.employer_name
FROM vacancies as v
  INNER JOIN employers as e ON v.employer_id = e.id
GROUP BY e.id


-- Вивід:
-- (5, 'SoftDev')
-- (1, 'InmicroMin')
-- (1, 'BuhOblik')
-- (1, 'TOVup')
-- (1, 'DreamsWork')
-- (2, 'CatDog')
-- (4, 'SoftBest')