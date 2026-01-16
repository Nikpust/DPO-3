CREATE TABLE movies (
    id              SERIAL      PRIMARY KEY,
    title           VARCHAR     NOT NULL,
    genre           VARCHAR     NOT NULL,
    duration_min    INTEGER     CHECK (duration_min > 0),
    age_rating      VARCHAR,
    UNIQUE (title)
);

CREATE TABLE halls (
    id          SERIAL      PRIMARY KEY,
    name        VARCHAR     NOT NULL,
    capacity    INTEGER     NOt NULL CHECK (capacity > 0)
);

CREATE TABLE customers (
    id              SERIAL      PRIMARY KEY,
    first_name      VARCHAR     NOT NULL,
    last_name       VARCHAR     NOT NULL,
    patronymic      VARCHAR,
    phone           VARCHAR(12),
    UNIQUE (phone)
);

CREATE TABLE screenings (
    id          SERIAL      PRIMARY KEY,
    movie_id    INTEGER     NOT NULL REFERENCES movies(id),
    hall_id     INTEGER     NOT NULL REFERENCES halls(id),
    starts_at   TIMESTAMP   NOT NULL
);

CREATE TABLE tickets (
    id              SERIAL      PRIMARY KEY,
    screening_id    INTEGER     NOT NULL REFERENCES screenings(id) ON DELETE CASCADE,
    customer_id     INTEGER     REFERENCES customers(id) ON DELETE SET NULL,
    seat_row        INTEGER     NOT NULL CHECK (seat_row > 0),
    seat_num        INTEGER     NOT NULL CHECK (seat_num > 0),
    price           NUMERIC     CHECK (price > 0),
    sold_at         TIMESTAMP,
    UNIQUE (screening_id, seat_row, seat_num)
);
