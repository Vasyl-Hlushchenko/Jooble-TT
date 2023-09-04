-- Визначити компанію, яка не опублікувала жодної вакансії:

SELECT e.employer_name, v.vacancy_name
FROM employers as e
  LEFT JOIN vacancies as v ON v.employer_id = e.id
WHERE v.vacancy_name IS NULL


-- Вивід:
-- ('PaperCompany', None)