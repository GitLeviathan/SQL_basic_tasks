INSERT INTO person_discounts
SELECT ROW_NUMBER( ) OVER ( ) AS id, person_order.person_id, menu.pizzeria_id,
CASE
	WHEN COUNT(*) = 1 THEN 10.5
    WHEN COUNT(*) = 2 THEN 22
    ELSE 30
END discount
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
GROUP BY 2, 3;