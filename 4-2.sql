
-- Название и продолжительность самого длительного трека
SELECT title, duration
FROM Track
WHERE duration = (SELECT MAX(duration) FROM Track);

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT title, duration
FROM Track
WHERE duration >= 210
ORDER BY duration DESC;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT title, year
FROM Collection
WHERE year BETWEEN 2018 AND 2020
ORDER BY year;

-- Исполнители, чьё имя состоит из одного слова.
INSERT INTO Artist (name) VALUES ('Grimes');
SELECT name
FROM Artist
WHERE name NOT LIKE '% %' AND name NOT LIKE '%-%';

-- Название треков, которые содержат слово «мой» или «my».
SELECT Title
FROM Track
WHERE LOWER(Title) LIKE '%мой%' OR LOWER(Title) LIKE '%my%';
