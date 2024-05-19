SELECT menu.pizza_name, pizzeria.name as pizzeria_name, menu.price FROM menu
JOIN pizzeria on menu.pizzeria_id = pizzeria.id
where pizza_name in ('mushroom pizza', 'pepperoni pizza')
ORDER by 1, 2;