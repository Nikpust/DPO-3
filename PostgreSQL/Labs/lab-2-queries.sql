INSERT INTO standards (integer_val, numeric_val, varchar_val, boolean_val, date_val, time_val, timestamp_val) VALUES
(10, 123.45, 'Первая запись', TRUE, '2025-09-20', '09:00', '2025-09-20 09:00:00'),
(20, 99.99, 'Вторая запись', FALSE, '2025-09-21', '12:30', '2025-09-21 12:30:00'),
(30, 0.01, 'Третья запись', TRUE, '2025-09-22', '18:45', '2025-09-22 18:45:00'),
(40, 5000.00, 'Четвёртая запись', FALSE, '2025-09-23', '21:10', '2025-09-23 21:10:00'),
(-10, 777.77, 'Пятая запись', TRUE, '2025-09-24', '07:15', '2025-09-24 07:15:00');

INSERT INTO orders (st) VALUES
('active'),
('done'),
('closed'),
('done'),
(DEFAULT);

INSERT INTO arrays (tags, ratings) VALUES
('{комедия, боевик, "с пробеллом"}', '{1, 2, 3}'),
('{фантастика, новинка}', '{4, 5}'),
('{драма}', '{6, 7}'),
('{мультфильм}', '{8}'),
('{ужасы, "психологический-триллер"}', '{10, 11, 12, 20, 21}');

INSERT INTO arrays (tags, ratings) VALUES
(ARRAY['один', 'два три'], ARRAY[1, 2, 3]);

INSERT INTO xml_json (xml_val, jsonb_val, json_val) VALUES
('<user><id>1</id><name>Иван</name></user>', '{"id":1,"name":"Иван"}', '{"id":1,"name":"Иван"}'),
('<order><sum>500</sum><status>done</status></order>', '{"sum":500,"status":"done"}', '{"sum":500,"status":"done"}'),
('<product><id>101</id><title>Ноутбук</title><price>75000</price></product>', '{"id":101,"title":"Ноутбук","price":75000}', '{"id":101,"title":"Ноутбук","price":75000}'),
('<book><isbn>978-5-4461-1234-5</isbn><author>Пушкин</author><title>Капитанская дочка</title></book>', '{"isbn":"978-5-4461-1234-5","author":"Пушкин","title":"Капитанская дочка"}', '{"isbn":"978-5-4461-1234-5","author":"Пушкин","title":"Капитанская дочка"}'),
('<ticket><event>Концерт</event><date>2025-10-01</date><seat>12A</seat></ticket>', '{"event":"Концерт","date":"2025-10-01","seat":"12A"}', '{"event":"Концерт","date":"2025-10-01","seat":"12A"}');

INSERT INTO warehouse (item, count) VALUES
(ROW('Наушники', 101, 2999.99), 15),
(ROW('Клавиатура', 102, 5490.00), 8),
(ROW('Мышь беспроводная', 103, 1990.50), 25),
(ROW('Монитор', 104, 18990.00), 5),
(ROW('Коврик для мыши', 105, 490.00), 60);

INSERT INTO others (price_money, bin_data, point_val, bit_val, uid_val) VALUES
('150,75', E'\\xA1B2C3D4', '(15, 25)', B'01010101', gen_random_uuid()),
('2500,50', E'\\xABCD', '(0, 0)', B'11110000', gen_random_uuid()),
('777,77', E'\\x01', '(5, 7)', B'00001111', gen_random_uuid()),
('50,00', E'\\xFF', '(3.14, 2.71)', B'11000011', gen_random_uuid()),
('9999,99', E'\\xCAFEBABE', '(100,200)', B'11111111', gen_random_uuid());
