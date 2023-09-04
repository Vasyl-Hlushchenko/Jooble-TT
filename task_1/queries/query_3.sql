-- Визначити кількість профілів по кожній професії:

SELECT COUNT(*), pr.profession_name
FROM profiles as p
  INNER JOIN professions as pr ON p.profession_id = pr.id
GROUP BY pr.profession_name


-- Вивід:
-- (3, 'Bukhhalter')
-- (2, 'Driver category D')
-- (2, 'Junior ASP.NET developer')
-- (2, 'Manager')
-- (2, 'Sql developer')