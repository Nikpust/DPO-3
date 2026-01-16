CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE standards (
  id              SERIAL PRIMARY KEY,
  integer_val     INTEGER,
  numeric_val     NUMERIC(10,2),
  varchar_val     VARCHAR,
  boolean_val     BOOLEAN,
  date_val        DATE,
  time_val        TIME,
  timestamp_val   TIMESTAMP
);

CREATE TYPE work_status AS ENUM ('done','active','closed');
CREATE TABLE orders (
  id    SERIAL PRIMARY KEY,
  st    work_status NOT NULL DEFAULT 'active'
);

CREATE TABLE arrays (
  id        SERIAL PRIMARY KEY,
  tags      TEXT[],
  ratings   INTEGER[]
);

CREATE TABLE xml_json (
  id          SERIAL PRIMARY KEY,
  xml_val     XML,
  jsonb_val   JSONB,
  json_val    JSON
);

CREATE TYPE inventory_item AS (
  name          TEXT,
  supplier_id   INTEGER,
  price         NUMERIC(10,2)
);
CREATE TABLE warehouse (
  id      SERIAL PRIMARY KEY,
  item    inventory_item,
  count   INTEGER
);

CREATE TABLE others (
  id            SERIAL PRIMARY KEY,
  price_money   MONEY,
  bin_data      BYTEA,
  point_val     POINT,
  bit_val       BIT(8),
  uid_val       UUID DEFAULT gen_random_uuid()
);
