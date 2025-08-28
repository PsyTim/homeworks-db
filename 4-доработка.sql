-- 
-- Дополнительные треки для проверки доработанного варианта
INSERT INTO Track (Title, Duration, AlbumID) VALUES
	('myself', 0, 6),
	('by myself', 0, 6),
	('bemy self', 0, 6),
	('myself by', 0, 6),
	('by myself by', 0, 6),
	('beemy', 0, 6),
	('premyne', 0, 6),
	('my own', 0, 6),
	('own my', 0, 6),
	('my', 0, 6),
	('oh my god', 0, 6);



-- Название треков, которые содержат слово «мой» или «my».
-- Доработанный вариант
SELECT Title
FROM Track
WHERE Title ILIKE 'мой %' /* Где слово в начале строки */
OR Title ILIKE '% мой'    /* Где слово в конце строки */
OR Title ILIKE '% мой %'  /* Где слово в середине строки */
OR Title ILIKE 'мой'  /* Где название трека состоит из одного искомого слова */
OR Title ILIKE 'my %'     /* Где слово в начале строки */
OR Title ILIKE '% my'     /* Где слово в конце строки */
OR Title ILIKE '% my %'   /* Где слово в середине строки */
OR Title ILIKE 'my';       /* Где название трека состоит из одного искомого слова */
