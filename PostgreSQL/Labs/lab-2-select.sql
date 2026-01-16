SELECT * FROM standards
WHERE integer_val > 10;

SELECT * FROM standards
WHERE numeric_val BETWEEN 100 AND 500;

SELECT * FROM standards
WHERE varchar_val LIKE '%е%';

SELECT * FROM standards
WHERE boolean_val = TRUE;

SELECT * FROM standards
WHERE date_val BETWEEN '2025-09-21' AND '2025-09-23';

SELECT * FROM standards
WHERE time_val > '12:00';

SELECT * FROM standards
WHERE timestamp_val > '2025-09-20 00:00';

SELECT * FROM orders
WHERE st = 'active';

SELECT * FROM arrays
WHERE 'комедия' = ANY(tags);

SELECT * FROM arrays
WHERE ratings && ARRAY[10, 11];

SELECT id, unnest(tags) FROM arrays;

SELECT * FROM xml_json
WHERE xml_val::text LIKE '%<status>done%'

SELECT * FROM xml_json
WHERE jsonb_val ? 'event';

SELECT * FROM xml_json
WHERE json_val::jsonb @> '{"name":"Иван"}';

SELECT id, (item).name, (item).supplier_id, (item).price FROM warehouse
WHERE (item).price > 5000;

SELECT * FROM others
WHERE price_money::numeric >= 1000;

SELECT id, encode(bin_data,'hex') AS hex FROM others
WHERE octet_length(bin_data) > 2;

SELECT id, point_val FROM others
WHERE point_val <@ box '((0,0),(50,50))';

SELECT * FROM others 
WHERE bit_val & B'00000011' = B'00000011';
