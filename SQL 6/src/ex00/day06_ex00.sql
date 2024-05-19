create table person_discounts (
  id bigint PRIMARY key ,
  person_id bigint NOT null ,
  pizzeria_id bigint NOT null ,
  discount NUMERIC NOT null DEFAULT 0,
  CONSTRAINT fk_person_discounts_person_id FOREIGN KEY (person_id) REFERENCES person(id),
  CONSTRAINT fk_person_discounts_pizzeria_id FOREIGN KEY (pizzeria_id) REFERENCES pizzeria(id)
);