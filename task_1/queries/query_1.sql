-- Отримати всі профіля з назвою професії:

SELECT p.name, pr.profession_name
FROM profiles as p
  INNER JOIN professions as pr ON p.profession_id = pr.id
GROUP BY p.name, pr.profession_name


-- Вивід:
-- ('Andrew', 'Manager')
-- ('Catherine', 'Sql developer')
-- ('Dmytro', 'Bukhhalter')
-- ('Elena', 'Bukhhalter')
-- ('Ivan', 'Sql developer')
-- ('Julia', 'Bukhhalter')
-- ('Mykhailo', 'Driver category D')
-- ('Olga', 'Junior ASP.NET developer')
-- ('Sergii', 'Junior ASP.NET developer')
-- ('Valentina', 'Manager')
-- ('Volodymyr', 'Driver category D')