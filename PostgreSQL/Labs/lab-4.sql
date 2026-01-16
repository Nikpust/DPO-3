CREATE TABLE products (
  id integer,
  created_at timestamp NOT NULL,
  active boolean NOT NULL,
  sort integer NOT NULL,
  price numeric(10,2) NOT NULL,
  category char(20) NOT NULL,
  name char(100) NOT NULL,
  description char(255) NOT NULL
);

INSERT INTO products (id, created_at, active, sort, price, category, name, description)
SELECT
  gs AS id,
  timestamp '2016-01-01' + (random() * (365*8) * interval '1 day') AS created_at,
  (random() < 0.70) AS active,
  (floor(random()*10000))::int AS sort,
  round((random()*10000)::numeric, 2) AS price,
  (array[
    'electronics','books','clothes','tools','sport',
    'beauty','games','home','kids','auto'
  ])[floor(random()*10)+1]::char(20) AS category,
  left(md5(random()::text), 60)::char(100) AS name,
  left(md5(random()::text) || md5(random()::text), 200)::char(255) AS description
FROM generate_series(1, 1000000) AS gs;