DROP TABLE IF EXISTS expenses;

CREATE TABLE expenses (
  id serial PRIMARY KEY,
  amount money NOT NULL CHECK(amount::numeric > 0.00),
  memo varchar(255) NOT NULL,
  created_on date NOT NULL DEFAULT NOW()
);

INSERT INTO expenses (amount, memo, created_on)
VALUES (14.56, 'Pencils', '2025-04-09'),
       (3.29, 'Coffee', DEFAULT),
       (49.99, 'Text Editor', '2020-03-21'),
       (300.00, 'Annie''s Present', '2025-04-12');