SELECT
    person.name,
    menu.pizza_name,
    menu.price,
    ROUND(price * (100 - discount) / 100, 3) AS discount_price,
    pizzeria.name AS pizzeria_name
FROM person_order
JOIN person ON person_order.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
JOIN person_discounts ON person_order.person_id = person_discounts.person_id
AND menu.pizzeria_id = person_discounts.pizzeria_id
ORDER BY 1, 2;