SELECT person.name FROM person_order
join person on person_order.person_id = person.id
JOIN menu on person_order.menu_id = menu.id
where person.address in ('Moscow', 'Samara') and gender like 'male'
and menu.pizza_name in ('pepperoni pizza', 'mushroom pizza')
order by name DESC;