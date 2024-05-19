COMMENT ON TABLE person_discounts IS 'Information about personal discounts';
COMMENT ON COLUMN person_discounts.id IS 'Record ID Identifier';
COMMENT ON COLUMN person_discounts.person_id IS 'The identifier of the person receiving the discount';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'The identifier of the pizzeria where the discount is valid';
COMMENT ON COLUMN person_discounts.discount IS 'Discount percentage for the specified pizzeria';