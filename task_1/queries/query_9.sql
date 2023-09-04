-- Визначити якій компанії теоретично підходить профіль пошукача:

SELECT e.employer_name, v.vacancy_name, p.name, p.lastname, pr.profession_name
FROM profiles as p
  INNER JOIN professions as pr ON p.profession_id = pr.id
  INNER JOIN vacancies AS v ON pr.id = v.profession_id
  INNER JOIN employers as e ON v.employer_id = e.id
GROUP BY p.id


-- Вивід:
-- ('SoftDev', 'Developer', 'Ivan', 'Ivanov', 'Sql developer')
-- ('SoftDev', 'Driver', 'Mykhailo', 'Mykhailov', 'Driver category D')
-- ('InmicroMin', 'Manager', 'Andrew', 'Kryvohliad', 'Manager')
-- ('SoftDev', 'Driver', 'Volodymyr', 'Miniailo', 'Driver category D')
-- ('SoftDev', 'Developer', 'Sergii', 'Triasylo', 'Junior ASP.NET developer')
-- ('SoftDev', 'Bukhhalter', 'Dmytro', 'Priadun', 'Bukhhalter')
-- ('InmicroMin', 'Manager', 'Valentina', 'Melnyk', 'Manager')
-- ('SoftDev', 'Developer', 'Olga', 'Palii', 'Junior ASP.NET developer')
-- ('SoftDev', 'Developer', 'Catherine', 'Maliar', 'Sql developer')
-- ('SoftDev', 'Bukhhalter', 'Elena', 'Ruban', 'Bukhhalter')
-- ('SoftDev', 'Bukhhalter', 'Julia', 'Tkach', 'Bukhhalter')