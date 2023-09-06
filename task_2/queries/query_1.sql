-- 1. конверсію цієї функції (кількість додавань в закладки по відношенню до кількості переглядів сторінки
-- товару)


-- Скрипт виконується для product_page_views.id_product = 1(тобто для продукту, products.id = 1)
SELECT (SELECT COUNT(pv.id) 
		FROM product_page_views AS pv
		LEFT JOIN product_page_actions AS pa ON pv.id = pa.id_page_view 
		WHERE pa.type = 2 AND pv.id_product = 1) * 100
		/
		(SELECT COUNT(pv.id_product)
		FROM product_page_views AS pv
		WHERE pv.id_product = 1) AS result


-- Вивід:
-- (60,)