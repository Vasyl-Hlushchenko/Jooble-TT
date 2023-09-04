-- Отримати всі профіля з назвою професії:

SELECT p.name, pr.profession_name
FROM profiles as p
  INNER JOIN professions as pr ON p.profession_id = pr.id
GROUP BY p.id


-- Вивід:
-- ('Ivan', 'Sql developer')
-- ('Mykhailo', 'Driver category D')
-- ('Andrew', 'Manager')
-- ('Volodymyr', 'Driver category D')
-- ('Sergii', 'Junior ASP.NET developer')
-- ('Dmytro', 'Bukhhalter')
-- ('Valentina', 'Manager')
-- ('Olga', 'Junior ASP.NET developer')
-- ('Catherine', 'Sql developer')
-- ('Elena', 'Bukhhalter')
-- ('Julia', 'Bukhhalter')