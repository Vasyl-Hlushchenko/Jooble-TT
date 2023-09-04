-- Вивести всі компанії в яких більше 3 розміщених вакансій:

SELECT e.employer_name, COUNT(*)
FROM vacancies as v
  INNER JOIN employers as e ON v.employer_id = e.id
GROUP BY e.employer_name
HAVING COUNT(*)>3


-- Вивід:
-- ('SoftBest', 4)
-- ('SoftDev', 5)