-- Добавляем исполнителей
INSERT INTO Artist (name) VALUES
    ('Imagine Dragons'),
    ('Lana Del Rey'),
    ('The Weeknd'),
    ('Billie Eilish');

-- Добавляем жанры
INSERT INTO Genre (name) VALUES
    ('Pop'),
    ('Rock'),
    ('Alternative R&B');

-- Связываем исполнителей с жанрами (у некоторых несколько жанров)
INSERT INTO ArtistGenre (artistid, genreid) VALUES
    (1, 1), (1, 2), -- Imagine Dragons - Pop, Rock
    (2, 1),         -- Lana Del Rey - Pop
    (3, 3),         -- The Weeknd - Alternative R&B
    (4, 1);         -- Billie Eilish - Pop

-- Добавляем альбомы
INSERT INTO Album (title, year) VALUES
    ('Night Visions', 2012),
    ('Born To Die', 2012),
    ('After Hours', 2020);

-- Связываем исполнителей с альбомами
INSERT INTO ArtistAlbum (artistid, albumid) VALUES
    (1, 1), -- Imagine Dragons - Night Visions
    (2, 2), -- Lana Del Rey - Born To Die
    (3, 3), -- The Weeknd - After Hours
    (4, 3); -- Billie Eilish feat. на альбоме After Hours

-- Добавляем треки
INSERT INTO Track (albumid, title, duration) VALUES
    (1, 'Radioactive', 187),
    (1, 'Demons', 175),
    (2, 'Video Games', 282),
    (2, 'Summertime Sadness', 265),
    (3, 'Blinding Lights', 200),
    (3, 'In Your Eyes', 237);

-- Добавляем сборники
INSERT INTO Collection (title, year) VALUES
    ('Best Pop Hits 2012', 2013),
    ('Chill Vibes', 2020),
    ('Road Trip Mix', 2021),
    ('The Weeknd Essentials', 2020);

-- Связываем сборники с треками
INSERT INTO TrackCollection (collectionid, trackid) VALUES
    (1, 1), -- Best Pop Hits -> Radioactive
    (1, 3), -- Best Pop Hits -> Video Games
    (2, 3), -- Chill Vibes -> Video Games
    (2, 4), -- Chill Vibes -> Summertime Sadness
    (3, 5), -- Road Trip Mix -> Blinding Lights
    (3, 6), -- Road Trip Mix -> In Your Eyes
    (4, 5), -- The Weeknd Essentials -> Blinding Lights
    (4, 6); -- The Weeknd Essentials -> In Your Eyes
