--- ЗАДАНИЕ 3.1 ---

--- СОЗДАНИЕ ТАБЛИЦ ---
CREATE TABLE order_history (
  id            SERIAL      PRIMARY KEY,
  order_id      INTEGER     NOT NULL,
  created_at    TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
  field_name    VARCHAR     NOT NULL,
  new_value     INTEGER     NOT NULL,
  old_value     INTEGER
);

CREATE TABLE status (
  id      SERIAL      PRIMARY KEY,
  title   VARCHAR     NOT NULL
);

--- ВСТАВКА ЗНАЧЕНИЙ ---
INSERT INTO status (title) VALUES
  ('Новый'),
  ('В работе'),
  ('Ожидает оплаты'),
  ('Отгружен'),
  ('Завершен');

-- Заказ 1
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (1, '2025-01-01 09:00:00', 'status_id', NULL, 1),
  (1, '2025-01-01 10:00:00', 'status_id', 1, 2),
  (1, '2025-01-02 09:00:00', 'status_id', 2, 3),
  (1, '2025-01-03 11:00:00', 'status_id', 3, 2),
  (1, '2025-01-04 15:30:00', 'status_id', 2, 4),
  (1, '2025-01-06 12:00:00', 'status_id', 4, 5);

-- Заказ 2
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (2, '2025-01-02 09:15:00', 'status_id', NULL, 1),
  (2, '2025-01-02 11:00:00', 'status_id', 1, 2),
  (2, '2025-01-03 10:00:00', 'status_id', 2, 3),
  (2, '2025-01-03 18:30:00', 'status_id', 3, 2),
  (2, '2025-01-04 16:00:00', 'status_id', 2, 4),
  (2, '2025-01-05 14:00:00', 'status_id', 4, 5);

-- Заказ 3
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (3, '2025-01-03 08:45:00', 'status_id', NULL, 1),
  (3, '2025-01-03 09:30:00', 'status_id', 1, 2),
  (3, '2025-01-04 13:00:00', 'status_id', 2, 3),
  (3, '2025-01-05 10:15:00', 'status_id', 3, 2),
  (3, '2025-01-06 17:20:00', 'status_id', 2, 4),
  (3, '2025-01-07 12:10:00', 'status_id', 4, 5);

-- Заказ 4
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (4, '2025-01-04 10:05:00', 'status_id', NULL, 1),
  (4, '2025-01-04 11:40:00', 'status_id', 1, 2),
  (4, '2025-01-05 09:50:00', 'status_id', 2, 3),
  (4, '2025-01-05 16:30:00', 'status_id', 3, 2),
  (4, '2025-01-06 15:00:00', 'status_id', 2, 4),
  (4, '2025-01-08 10:30:00', 'status_id', 4, 5);

-- Заказ 5
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (5, '2025-01-05 08:20:00', 'status_id', NULL, 1),
  (5, '2025-01-05 09:10:00', 'status_id', 1, 2),
  (5, '2025-01-06 11:00:00', 'status_id', 2, 3),
  (5, '2025-01-07 14:45:00', 'status_id', 3, 2),
  (5, '2025-01-08 16:10:00', 'status_id', 2, 4),
  (5, '2025-01-09 13:00:00', 'status_id', 4, 5);

-- Заказ 6
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (6, '2025-02-01 10:00:00', 'status_id', NULL, 1),
  (6, '2025-02-01 11:30:00', 'status_id', 1, 2),
  (6, '2025-02-02 09:20:00', 'status_id', 2, 3),
  (6, '2025-02-03 10:40:00', 'status_id', 3, 2),
  (6, '2025-02-04 15:00:00', 'status_id', 2, 4),
  (6, '2025-02-05 12:30:00', 'status_id', 4, 5);

-- Заказ 7
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (7, '2025-02-02 09:05:00', 'status_id', NULL, 1),
  (7, '2025-02-02 09:50:00', 'status_id', 1, 2),
  (7, '2025-02-03 13:15:00', 'status_id', 2, 3),
  (7, '2025-02-04 11:25:00', 'status_id', 3, 2),
  (7, '2025-02-05 17:45:00', 'status_id', 2, 4),
  (7, '2025-02-06 10:55:00', 'status_id', 4, 5);

-- Заказ 8
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (8, '2025-02-03 08:10:00', 'status_id', NULL, 1),
  (8, '2025-02-03 09:00:00', 'status_id', 1, 2),
  (8, '2025-02-04 10:30:00', 'status_id', 2, 3),
  (8, '2025-02-05 15:20:00', 'status_id', 3, 2),
  (8, '2025-02-06 16:00:00', 'status_id', 2, 4),
  (8, '2025-02-07 11:40:00', 'status_id', 4, 5);

-- Заказ 9
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (9, '2025-02-04 09:25:00', 'status_id', NULL, 1),
  (9, '2025-02-04 10:15:00', 'status_id', 1, 2),
  (9, '2025-02-05 12:50:00', 'status_id', 2, 3),
  (9, '2025-02-06 09:35:00', 'status_id', 3, 2),
  (9, '2025-02-07 14:10:00', 'status_id', 2, 4),
  (9, '2025-02-08 13:30:00', 'status_id', 4, 5);

-- Заказ 10
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (10, '2025-02-05 08:40:00', 'status_id', NULL, 1),
  (10, '2025-02-05 09:20:00', 'status_id', 1, 2),
  (10, '2025-02-06 11:10:00', 'status_id', 2, 3),
  (10, '2025-02-07 10:05:00', 'status_id', 3, 2),
  (10, '2025-02-08 15:45:00', 'status_id', 2, 4),
  (10, '2025-02-09 12:15:00', 'status_id', 4, 5);

--- ОТЧЁТ ---
WITH 
  next_time AS (
    SELECT
      order_id,
      created_at,
      new_value AS status_id,
      LEAD(created_at) OVER (
        PARTITION BY order_id
        ORDER BY created_at
      ) AS next_t
    FROM order_history
    WHERE field_name = 'status_id'
  ),
  interval_time AS (
    SELECT
      status_id,
      next_t - created_at AS interval
    FROM next_time
    WHERE next_t IS NOT NULL
  )
SELECT 
  status.title AS "Статус", 
  AVG(interval_time.interval) AS "Среднее время пребывания"
FROM interval_time
JOIN status ON interval_time.status_id = status.id
GROUP BY status.title
ORDER BY status.title;





--- ЗАДАНИЕ 3.2 ---

--- СОЗДАНИЕ ТАБЛИЦ ---
CREATE TABLE customer_visit (
  id              SERIAL          PRIMARY KEY,
  customer_id     INTEGER         NOT NULL,
  created_at      TIMESTAMP       NOT NULL,
  visit_length    INTEGER         NOT NULL,
  landing_page    VARCHAR(500)    NOT NULL,
  exit_page       VARCHAR(500)    NOT NULL,
  utm_source      VARCHAR(100)
);

CREATE TABLE customer_visit_page (
  id              SERIAL          PRIMARY KEY,
  visit_id        INTEGER         NOT NULL,
  page            VARCHAR(500)    NOT NULL,
  time_on_page    INTEGER         NOT NULL,
  
  CONSTRAINT fk_visit
    FOREIGN KEY (visit_id) REFERENCES customer_visit(id)
);

--- ВСТАВКА ЗНАЧЕНИЙ ---
INSERT INTO customer_visit ( id, customer_id, created_at, visit_length, landing_page, exit_page, utm_source) VALUES
  -- Клиент 101
  (1, 101, '2025-03-01 09:05:00', 300, '/home',            '/product/1',        'google'),
  (2, 101, '2025-03-02 10:20:00', 540, '/home',            '/checkout',         'email'),
  (3, 101, '2025-03-04 19:40:00', 180, '/promo/sale',      '/product/3',        'vk'),
  (4, 101, '2025-03-06 08:55:00', 720, '/home',            '/checkout',         'google'),
  (5, 101, '2025-03-08 21:10:00', 420, '/category/clothes','/product/7',        'retargeting'),

  -- Клиент 102
  (6, 102, '2025-03-01 11:15:00', 240, '/home',            '/home',             'direct'),
  (7, 102, '2025-03-03 14:05:00', 480, '/product/2',       '/cart',             'google'),
  (8, 102, '2025-03-05 18:30:00', 900, '/home',            '/checkout',         'email'),
  (9, 102, '2025-03-07 20:50:00', 360, '/category/shoes',  '/product/8',        'vk'),
  (10,102, '2025-03-09 09:25:00', 600, '/home',            '/category/shoes',   'yandex'),

  -- Клиент 103
  (11,103, '2025-03-02 08:50:00', 180, '/home',            '/product/5',        'yandex'),
  (12,103, '2025-03-03 16:10:00', 420, '/category/shoes',  '/product/8',        'vk'),
  (13,103, '2025-03-05 21:35:00', 540, '/home',            '/checkout',         'google'),
  (14,103, '2025-03-07 10:05:00', 300, '/home',            '/category/access',  'direct'),
  (15,103, '2025-03-09 19:45:00', 660, '/promo/new',       '/product/11',       'email'),

  -- Клиент 104
  (16,104, '2025-03-01 10:00:00', 260, '/home',            '/category/bags',    'direct'),
  (17,104, '2025-03-02 13:20:00', 480, '/promo/spring',    '/product/10',       'email'),
  (18,104, '2025-03-04 15:45:00', 720, '/home',            '/checkout',         'google'),
  (19,104, '2025-03-06 17:10:00', 360, '/category/bags',   '/product/9',        'vk'),
  (20,104, '2025-03-08 12:30:00', 900, '/home',            '/checkout',         'retargeting'),

  -- Клиент 105
  (21,105, '2025-03-02 09:40:00', 210, '/home',            '/product/4',        'google'),
  (22,105, '2025-03-03 11:55:00', 420, '/category/electro','/product/6',        'yandex'),
  (23,105, '2025-03-05 16:25:00', 600, '/home',            '/checkout',         'email'),
  (24,105, '2025-03-07 20:15:00', 330, '/category/electro','/product/6',        'vk'),
  (25,105, '2025-03-09 22:05:00', 780, '/home',            '/checkout',         'google'),

  -- Клиент 106
  (26,106, '2025-03-01 08:30:00', 240, '/home',            '/category/kids',    'direct'),
  (27,106, '2025-03-03 10:50:00', 480, '/category/kids',   '/product/12',       'google'),
  (28,106, '2025-03-05 14:40:00', 720, '/home',            '/checkout',         'email'),
  (29,106, '2025-03-07 18:55:00', 360, '/category/kids',   '/product/13',       'vk'),
  (30,106, '2025-03-10 09:05:00', 840, '/home',            '/checkout',         'retargeting');

INSERT INTO customer_visit_page (id, visit_id, page, time_on_page) VALUES
  -- Визит 1 (300)
  (1,  1, '/home',               60),
  (2,  1, '/category/clothes',   90),
  (3,  1, '/product/1',         120),

  -- Визит 2 (540)
  (4,  2, '/home',               90),
  (5,  2, '/category/clothes',  150),
  (6,  2, '/product/1',         180),
  (7,  2, '/checkout',          100),

  -- Визит 3 (180)
  (8,  3, '/promo/sale',         60),
  (9,  3, '/category/sale',      70),
  (10, 3, '/product/3',          40),

  -- Визит 4 (720)
  (11, 4, '/home',              120),
  (12, 4, '/category/clothes',  150),
  (13, 4, '/product/2',         200),
  (14, 4, '/checkout',          200),

  -- Визит 5 (420)
  (15, 5, '/category/clothes',  120),
  (16, 5, '/product/7',         180),
  (17, 5, '/reviews/7',         100),

  -- Визит 6 (240)
  (18, 6, '/home',               80),
  (19, 6, '/category/clothes',   80),
  (20, 6, '/home',               70),

  -- Визит 7 (480)
  (21, 7, '/product/2',         150),
  (22, 7, '/category/clothes',  150),
  (23, 7, '/cart',              140),

  -- Визит 8 (900)
  (24, 8, '/home',              120),
  (25, 8, '/category/electro',  180),
  (26, 8, '/product/6',         240),
  (27, 8, '/checkout',          300),

  -- Визит 9 (360)
  (28, 9, '/category/shoes',    120),
  (29, 9, '/product/8',         150),
  (30, 9, '/reviews/8',         80),

  -- Визит 10 (600)
  (31,10, '/home',              120),
  (32,10, '/category/shoes',    180),
  (33,10, '/product/8',         180),
  (34,10, '/category/shoes',    100),

  -- Визит 11 (180)
  (35,11, '/home',               60),
  (36,11, '/category/access',    60),
  (37,11, '/product/5',          50),

  -- Визит 12 (420)
  (38,12, '/category/shoes',    120),
  (39,12, '/product/8',         180),
  (40,12, '/reviews/8',         100),

  -- Визит 13 (540)
  (41,13, '/home',              100),
  (42,13, '/category/shoes',    150),
  (43,13, '/product/8',         180),
  (44,13, '/checkout',          90),

  -- Визит 14 (300)
  (45,14, '/home',               80),
  (46,14, '/category/access',   120),
  (47,14, '/product/9',          80),

  -- Визит 15 (660)
  (48,15, '/promo/new',         120),
  (49,15, '/category/clothes',  180),
  (50,15, '/product/11',        220),
  (51,15, '/reviews/11',        120),

  -- Визит 16 (260)
  (52,16, '/home',               80),
  (53,16, '/category/bags',      90),
  (54,16, '/product/9',          70),

  -- Визит 17 (480)
  (55,17, '/promo/spring',      120),
  (56,17, '/category/clothes',  150),
  (57,17, '/product/10',        150),

  -- Визит 18 (720)
  (58,18, '/home',              120),
  (59,18, '/category/bags',     180),
  (60,18, '/product/10',        220),
  (61,18, '/checkout',          180),

  -- Визит 19 (360)
  (62,19, '/category/bags',     120),
  (63,19, '/product/9',         160),
  (64,19, '/reviews/9',          70),

  -- Визит 20 (900)
  (65,20, '/home',              150),
  (66,20, '/category/bags',     200),
  (67,20, '/product/10',        250),
  (68,20, '/checkout',          250),

  -- Визит 21 (210)
  (69,21, '/home',               70),
  (70,21, '/category/electro',   80),
  (71,21, '/product/4',          50),

  -- Визит 22 (420)
  (72,22, '/category/electro',  120),
  (73,22, '/product/6',         180),
  (74,22, '/reviews/6',         100),

  -- Визит 23 (600)
  (75,23, '/home',              120),
  (76,23, '/category/electro',  180),
  (77,23, '/product/6',         200),
  (78,23, '/checkout',          80),

  -- Визит 24 (330)
  (79,24, '/category/electro',  100),
  (80,24, '/product/6',         150),
  (81,24, '/reviews/6',         70),

  -- Визит 25 (780)
  (82,25, '/home',              150),
  (83,25, '/category/electro',  200),
  (84,25, '/product/6',         250),
  (85,25, '/checkout',          150),

  -- Визит 26 (240)
  (86,26, '/home',               80),
  (87,26, '/category/kids',      90),
  (88,26, '/product/12',         60),

  -- Визит 27 (480)
  (89,27, '/category/kids',     140),
  (90,27, '/product/12',        180),
  (91,27, '/reviews/12',        140),

  -- Визит 28 (720)
  (92,28, '/home',              150),
  (93,28, '/category/kids',     200),
  (94,28, '/product/13',        220),
  (95,28, '/checkout',          140),

  -- Визит 29 (360)
  (96,29, '/category/kids',     120),
  (97,29, '/product/13',        160),
  (98,29, '/reviews/13',         70),

  -- Визит 30 (840)
  (99,30, '/home',              150),
  (100,30,'/category/kids',     220),
  (101,30,'/product/13',        250),
  (102,30,'/checkout',          200);

--- ОТЧЁТ №1 ---
SELECT 
  customer_id AS "Клиент",
  MAX(created_at) AS "Дата последнего визита"
FROM public.customer_visit
GROUP BY customer_id
ORDER BY customer_id ASC;

--- ОТЧЁТ №2 ---
SELECT
  t.customer_id AS "Клиент",
	AVG(t.cnt_pages) AS "Среднее кол-во страниц"
FROM (
	SELECT
	  v.customer_id,
	  v.id AS "visit_id",
	  COUNT(p.id) AS "cnt_pages"
	FROM customer_visit v
	JOIN customer_visit_page p ON p.visit_id = v.id
	GROUP BY v.customer_id, v.id
	ORDER BY v.customer_id, v.id
) AS t
GROUP BY t.customer_id;

--- ОТЧЁТ №3 ---
SELECT
  v.customer_id AS "Клиент",
  p.page AS "Страница",
  avg_time AS "Седнее время",
  v.visit_length AS "Время пребывания"
FROM customer_visit v
JOIN customer_visit_page p ON p.visit_id = v.id
JOIN (
  SELECT
    v.customer_id,
    AVG(v.visit_length) AS "avg_time"
  FROM customer_visit v
  GROUP BY v.customer_id
) t ON v.customer_id = t.customer_id
WHERE v.visit_length > t.avg_time
ORDER BY v.customer_id, p.page;





--- ЗАДАНИЕ 3.3 ---

--- СОЗДАНИЕ ТАБЛИЦЫ ЗАКАЗЧИКОВ ---
CREATE TABLE customer (
  id            INTEGER         PRIMARY KEY,
  created_at    TIMESTAMP       NOT NULL,
  first_name    VARCHAR(100)    NOT NULL,
  last_name     VARCHAR(100)    NOT NULL,
  phone         VARCHAR(50),
  email         VARCHAR(200)
);

--- ЗАПОЛНЕНИЕ ДЛЯ СВЯЗКИ ---
INSERT INTO customer (id, created_at, first_name, last_name, phone, email) VALUES
  (101, '2025-02-25 10:00:00', 'Иван',     'Петров',   '+7-900-101-00-01', 'ivan.petrov101@example.com'),
  (102, '2025-02-25 10:05:00', 'Мария',    'Сидорова', '+7-900-102-00-02', 'maria.sidorova102@example.com'),
  (103, '2025-02-25 10:10:00', 'Алексей',  'Иванов',   '+7-900-103-00-03', 'alexey.ivanov103@example.com'),
  (104, '2025-02-25 10:15:00', 'Ольга',    'Кузнецова','+7-900-104-00-04', 'olga.kuznetsova104@example.com'),
  (105, '2025-02-25 10:20:00', 'Никита',   'Смирнов',  '+7-900-105-00-05', 'nikita.smirnov105@example.com'),
  (106, '2025-02-25 10:25:00', 'Екатерина','Васильева','+7-900-106-00-06', 'ekaterina.vasileva106@example.com');

--- МОДИФИКАЦИЯ УЖЕ ИМЕЮЩЕЙСЯ ТАБЛИЦЫ ВИЗИТОВ ---
ALTER TABLE customer_visit
  ADD CONSTRAINT fk_visit_customer
  FOREIGN KEY (customer_id) REFERENCES customer(id);

--- СОЗДАНИЕ ТАБЛИЦЫ МЕНЕДЖЕР ---
CREATE TABLE manager (
  id            SERIAL          PRIMARY KEY,
  first_name    VARCHAR(100)    NOT NULL,
  last_name     VARCHAR(100)    NOT NULL
);

--- ЗАПОЛНЕНИЕ ДЛЯ СВЯЗКИ ---
INSERT INTO manager (id, first_name, last_name) VALUES
  (1, 'Анна', 'Морозова'),
  (2, 'Дмитрий', 'Соколов');

--- СОЗДАНИЕ ТАБЛИЦЫ ЗАКАЗОВ ---
CREATE TABLE customer_order (
  id            SERIAL          PRIMARY KEY,
  created_at    TIMESTAMP       NOT NULL,
  customer_id   INTEGER         NOT NULL,
  manager_id    INTEGER         NOT NULL,
  status_id     INTEGER         NOT NULL,
  is_paid       BOOLEAN         NOT NULL DEFAULT FALSE,
  total_sum     NUMERIC(12,2)   NOT NULL,
  utm_source    VARCHAR(100),

  CONSTRAINT fk_order_customer
    FOREIGN KEY (customer_id) REFERENCES customer(id),

  CONSTRAINT fk_order_manager
    FOREIGN KEY (manager_id) REFERENCES manager(id),

  CONSTRAINT fk_order_status
    FOREIGN KEY (status_id) REFERENCES status(id)
);

--- ЗАПОЛНЕНИЕ ---
INSERT INTO customer_order (id, created_at, customer_id, manager_id, status_id, is_paid, total_sum, utm_source) VALUES
  (1,  '2025-01-01 08:50:00', 101, 1, 5, TRUE,  5000, 'google'),
  (2,  '2025-01-02 09:00:00', 102, 1, 5, TRUE,  7500, 'email'),
  (3,  '2025-01-03 08:30:00', 103, 2, 5, TRUE,  3200, 'vk'),
  (4,  '2025-01-04 09:50:00', 104, 2, 5, TRUE,  9100, 'direct'),
  (5,  '2025-01-05 08:10:00', 105, 1, 5, TRUE,  4500, 'google'),
  (6,  '2025-02-01 09:40:00', 106, 1, 5, TRUE, 12000, 'email'),
  (7,  '2025-02-02 08:50:00', 101, 2, 5, TRUE,  6400, 'vk'),
  (8,  '2025-02-03 08:00:00', 102, 2, 5, TRUE,  8300, 'google'),
  (9,  '2025-02-04 09:10:00', 103, 1, 5, TRUE,  2700, 'direct'),
  (10, '2025-02-05 08:30:00', 104, 2, 5, TRUE,  9900, 'email');


--- СВЯЗКА---
ALTER TABLE order_history
  ADD CONSTRAINT fk_order_history_order
  FOREIGN KEY (order_id) REFERENCES customer_order(id);

--- ДОБАВЛЕНИЕ ДАННЫХ В БД ДЛЯ ОТЧЕТОВ ---
INSERT INTO status (title) VALUES ('Отменен');

INSERT INTO customer_order (id, created_at, customer_id, manager_id, status_id, is_paid, total_sum, utm_source) VALUES
  (11, '2025-02-10 08:50:00', 101, 1, 6, FALSE,  4000, 'google'),
  (12, '2025-02-10 09:10:00', 102, 2, 6, FALSE,  3000, 'email'),
  (13, '2025-02-11 08:30:00', 103, 1, 6, FALSE,  8500, 'vk'),
  (14, '2025-02-12 08:45:00', 104, 2, 6, FALSE,  2000, 'direct');

-- Заказ 11 (отменён на этапе "Ожидает оплаты")
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (11, '2025-02-10 09:00:00', 'status_id', NULL, 1),  -- Новый
  (11, '2025-02-10 10:00:00', 'status_id', 1,    2),  -- В работе
  (11, '2025-02-11 11:30:00', 'status_id', 2,    3),  -- Ожидает оплаты
  (11, '2025-02-12 15:00:00', 'status_id', 3,    6);  -- Отменен

-- Заказ 12 (отменён из "В работе")
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (12, '2025-02-10 09:15:00', 'status_id', NULL, 1),
  (12, '2025-02-10 09:45:00', 'status_id', 1,    2),
  (12, '2025-02-11 13:00:00', 'status_id', 2,    6);

-- Заказ 13 (отменён после "Отгружен" — как пример спорной ситуации)
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (13, '2025-02-11 08:40:00', 'status_id', NULL, 1),
  (13, '2025-02-11 09:30:00', 'status_id', 1,    2),
  (13, '2025-02-12 10:20:00', 'status_id', 2,    4),  -- Отгружен
  (13, '2025-02-13 16:00:00', 'status_id', 4,    6);  -- Отменен

-- Заказ 14 (отменён сразу из "Новый")
INSERT INTO order_history (order_id, created_at, field_name, old_value, new_value) VALUES
  (14, '2025-02-12 09:00:00', 'status_id', NULL, 1),
  (14, '2025-02-12 12:00:00', 'status_id', 1,    6);


--- ОТЧЁТ №1 ---
WITH order_gaps AS (
  SELECT
    customer_id,
    created_at,
    LEAD(created_at) OVER (
      PARTITION BY customer_id
      ORDER BY created_at
    ) AS gap
  FROM customer_order
)
SELECT
  customer_id AS "Клиент",
  AVG(gap - created_at) AS "Среднее время между заказами"
FROM order_gaps
WHERE gap IS NOT NULL
GROUP BY customer_id
ORDER BY customer_id;

--- ОТЧЁТ №2 ---
WITH 
  visits AS (
    SELECT
      customer_id,
      COUNT(customer_id) AS cnt_visits
    FROM customer_visit
    GROUP BY customer_id
  ),
  orders AS (
    SELECT
      customer_id,
      COUNT(customer_id) AS cnt_orders
    FROM customer_order
    GROUP BY customer_id
  )
SELECT
  c.id AS "Клиент",
  v.cnt_visits AS "Кол-во визитов",
  o.cnt_orders AS "Кол-во заказов"
FROM customer c
JOIN visits v ON v.customer_id = c.id
JOIN orders o ON o.customer_id = c.id
ORDER BY c.id;

--- ОТЧЁТ №3 ---
WITH 
  visits AS (
    SELECT
      utm_source,
      COUNT(utm_source) AS cnt_visits
    FROM customer_visit
    GROUP BY utm_source
  ),
  orders AS (
    SELECT 
      co.utm_source,
      COUNT(utm_source) AS cnt_orders,
      COUNT(utm_source) FILTER (WHERE co.is_paid = TRUE) AS cnt_paids,
      COUNT(utm_source) FILTER (WHERE s.title = 'Завершен') AS cnt_dones
    FROM customer_order co
    JOIN status s ON s.id = co.status_id
    GROUP BY co.utm_source
  )
SELECT
  v.utm_source AS "Источник",
  COALESCE(v.cnt_visits, 0) AS "Кол-во визитов с источника",
  COALESCE(o.cnt_orders, 0) AS "Кол-во созданных заказов",
  COALESCE(o.cnt_paids, 0) AS "Кол-во оплаченных заказов",
  COALESCE(o.cnt_dones, 0) AS "Кол-во выполненных заказов"
FROM visits v
LEFT JOIN orders o ON o.utm_source = v.utm_source
ORDER BY v.utm_source;

--- ОТЧЁТ №4 ---
WITH completed AS (
  SELECT
    oh.order_id,
    MIN(oh.created_at) AS finished_at
  FROM order_history oh
  JOIN status s ON s.id = oh.new_value
  WHERE s.title = 'Завершен'
  GROUP BY oh.order_id
)
SELECT
  m.last_name AS "Фамилия",
  m.first_name AS "Имя",
  AVG(c.finished_at - o.created_at) AS "Среднее время выполнения заказов",
  ROUND((SUM(CASE WHEN s.title = 'Отменен' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS "Доля отмененных заказов (%)",
  SUM(CASE WHEN s.title = 'Завершен' THEN o.total_sum ELSE 0 END) AS "Сумма выполненных заказов",
  ROUND(AVG(o.total_sum), 2) AS "Средняя стоимость заказа"
FROM manager m
JOIN customer_order o ON o.manager_id = m.id
LEFT JOIN completed c ON c.order_id = o.id
JOIN status s ON s.id = o.status_id
GROUP BY m.id
ORDER BY m.last_name;

--- ОТЧЁТ №5 ---
WITH 
  completed AS (
    SELECT
      oh.order_id,
      MIN(oh.created_at) AS finished_at
    FROM order_history oh
    JOIN status s ON s.id = oh.new_value
    WHERE s.title = 'Завершен'
    GROUP BY oh.order_id
  ),
  details AS (
    SELECT
      o.id AS order_id,
      o.manager_id,
      o.created_at,
      s.title AS status,
      c.finished_at
    FROM customer_order o
    JOIN status s ON s.id = o.status_id
    LEFT JOIN completed c ON c.order_id = o.id
  ),
  manager_stats AS (
    SELECT
      manager_id,
      COUNT(*) AS manager_cnt_orders,
      COUNT(*) FILTER (WHERE status = 'Завершен')::numeric / COUNT(*)::numeric AS manager_completed_orders,
      COUNT(*) FILTER (WHERE status = 'Отменен')::numeric / COUNT(*)::numeric AS manager_cancel_orders,
      AVG(EXTRACT(EPOCH FROM finished_at - created_at)) / 3600.0 AS manager_avg_hours 
    FROM details
    GROUP BY manager_id
  ),
  all_stats AS (
    SELECT
      COUNT(*) AS all_cnt_orders,
      COUNT(*) FILTER (WHERE status = 'Завершен')::numeric / COUNT(*)::numeric AS all_completed_orders,
      COUNT(*) FILTER (WHERE status = 'Отменен')::numeric / COUNT(*)::numeric AS all_cancel_orders,
      AVG(EXTRACT(EPOCH FROM finished_at - created_at)) / 3600.0 AS all_avg_hours 
    FROM details
  )
SELECT
  m.manager_id AS "ID менеджера",
  (m.manager_completed_orders - a.all_completed_orders) + (m.manager_avg_hours - a.all_avg_hours) - (m.manager_cancel_orders - a.all_cancel_orders) AS "Рейтинг",
  manager_completed_orders,
  manager_cancel_orders,
  manager_avg_hours,
  a.all_completed_orders,
  a.all_avg_hours,
  a.all_cancel_orders
FROM manager_stats m
CROSS JOIN all_stats a
ORDER BY m.manager_id;