DROP TABLE IF EXISTS expenses;

CREATE TABLE expenses (
  id serial PRIMARY KEY,
  created_on date NOT NULL DEFAULT NOW(),
  amount money NOT NULL CHECK(amount::numeric > 0.00),
  memo varchar(255) NOT NULL
);

INSERT INTO expenses (created_on, amount, memo)
VALUES ('2025-04-09', 14.56, 'Pencils'),
       (DEFAULT, 3.29, 'Coffee'),
       ('2020-03-21', 49.99, 'Text Editor'),
       ('2025-04-12', 300.00, 'Annie''s Present');