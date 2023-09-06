-- 2. ту саму конверсію, але тільки для тих показів сторінки товару, коли користувач зареєстрований і у нас є
-- інформація про те що він/вона раніше виконали хоча б одну купівлю


-- Скрипт виконується для product_page_views.id_product = 1(тобто для продукту, products.id = 1)
-- та product_page_views.id_user_account = 1(тобто для юзера, users.id = 1)
SELECT (SELECT COUNT(pv.id) 
		FROM product_page_views AS pv
		LEFT JOIN product_page_actions AS pa ON pv.id = pa.id_page_view 
		WHERE pa.type = 2 AND pv.id_product = 1
		AND pv.id_user_account IN (SELECT DISTINCT tr.id_user_account
								FROM transactions AS tr
								INNER JOIN users AS u ON tr.id_user_account = u.id
								INNER JOIN product_page_views AS pv ON u.id = pv.id_user_account
								WHERE pv.id_user_account = 1)) * 100
		/
		(SELECT COUNT(pv.id_product)
		FROM product_page_views AS pv
		WHERE pv.id_product=1
		AND pv.id_user_account IN (SELECT DISTINCT tr.id_user_account
								FROM transactions AS tr
								INNER JOIN users AS u ON tr.id_user_account = u.id
								INNER JOIN product_page_views AS pv ON u.id = pv.id_user_account
								WHERE pv.id_user_account = 1)) AS result


-- Вивід:
-- (100,)