-- Визначити якій компанії теоретично підходить профіль пошукача:

SELECT e.employer_name, v.vacancy_name, p.name, p.lastname, pr.profession_name
FROM profiles as p
  INNER JOIN professions as pr ON p.profession_id = pr.id
  INNER JOIN vacancies AS v ON pr.id = v.profession_id
  INNER JOIN employers as e ON v.employer_id = e.id
GROUP BY e.employer_name, v.vacancy_name, p.name, p.lastname, pr.profession_name


-- Вивід:
-- ('BuhOblik', 'Driver', 'Mykhailo', 'Mykhailov', 'Driver category D')
-- ('BuhOblik', 'Driver', 'Volodymyr', 'Miniailo', 'Driver category D')
-- ('CatDog', 'Driver', 'Mykhailo', 'Mykhailov', 'Driver category D')
-- ('CatDog', 'Driver', 'Volodymyr', 'Miniailo', 'Driver category D')
-- ('CatDog', 'Manager', 'Andrew', 'Kryvohliad', 'Manager')
-- ('CatDog', 'Manager', 'Valentina', 'Melnyk', 'Manager')
-- ('DreamsWork', 'Developer', 'Catherine', 'Maliar', 'Sql developer')
-- ('DreamsWork', 'Developer', 'Ivan', 'Ivanov', 'Sql developer')
-- ('InmicroMin', 'Manager', 'Andrew', 'Kryvohliad', 'Manager')
-- ('InmicroMin', 'Manager', 'Valentina', 'Melnyk', 'Manager')
-- ('SoftBest', 'Bukhhalter', 'Dmytro', 'Priadun', 'Bukhhalter')
-- ('SoftBest', 'Bukhhalter', 'Elena', 'Ruban', 'Bukhhalter')
-- ('SoftBest', 'Bukhhalter', 'Julia', 'Tkach', 'Bukhhalter')
-- ('SoftBest', 'Developer', 'Catherine', 'Maliar', 'Sql developer')
-- ('SoftBest', 'Developer', 'Ivan', 'Ivanov', 'Sql developer')
-- ('SoftBest', 'Developer', 'Olga', 'Palii', 'Junior ASP.NET developer')
-- ('SoftBest', 'Developer', 'Sergii', 'Triasylo', 'Junior ASP.NET developer')
-- ('SoftDev', 'Bukhhalter', 'Dmytro', 'Priadun', 'Bukhhalter')
-- ('SoftDev', 'Bukhhalter', 'Elena', 'Ruban', 'Bukhhalter')
-- ('SoftDev', 'Bukhhalter', 'Julia', 'Tkach', 'Bukhhalter')
-- ('SoftDev', 'Developer', 'Catherine', 'Maliar', 'Sql developer')
-- ('SoftDev', 'Developer', 'Ivan', 'Ivanov', 'Sql developer')
-- ('SoftDev', 'Developer', 'Olga', 'Palii', 'Junior ASP.NET developer')
-- ('SoftDev', 'Developer', 'Sergii', 'Triasylo', 'Junior ASP.NET developer')
-- ('SoftDev', 'Driver', 'Mykhailo', 'Mykhailov', 'Driver category D')
-- ('SoftDev', 'Driver', 'Volodymyr', 'Miniailo', 'Driver category D')
-- ('TOVup', 'Manager', 'Andrew', 'Kryvohliad', 'Manager')
-- ('TOVup', 'Manager', 'Valentina', 'Melnyk', 'Manager')