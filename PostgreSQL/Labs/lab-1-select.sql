SELECT * FROM movies

SELECT * FROM halls

SELECT s.id, m.title, h.name, s.starts_at
FROM screenings s
JOIN movies m ON m.id = s.movie_id
JOIN halls h ON h.id = s.hall_id

SELECT t.id, c.last_name, c.first_name, c.phone, m.title, m.genre, h.name, s.starts_at
FROM tickets t
JOIN customers c ON c.id = t.customer_id
JOIN screenings s ON s.id = t.screening_id
JOIN movies m ON m.id = s.movie_id
JOIN halls h ON h.id = s.hall_id

UPDATE movies
SET age_rating = '0+'
WHERE id = 4;

UPDATE screenings
SET starts_at = '2025-10-25 12:00:00'
WHERE id = 1;

DELETE FROM screenings
WHERE id = 1;

DELETE FROM movies
WHERE title = 'Интерстеллар';
