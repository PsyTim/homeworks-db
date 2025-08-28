-- Добавление исполнителей (Artist)
INSERT INTO Artist (Name) VALUES
  ('The Weeknd'),
  ('Imagine Dragons'),
  ('Нервы'),
  ('Макс Корж'),
  ('Rammstein');

-- Добавление жанров (Genre)
INSERT INTO Genre (Name) VALUES
  ('Pop'),
  ('Rock'),
  ('Hip-Hop'),
  ('Electronic');

-- Связь исполнителей и жанров (ArtistGenre)
INSERT INTO ArtistGenre (ArtistID, GenreID)
VALUES
  (1, 1), -- The Weeknd -> Pop
  (2, 2), -- Imagine Dragons -> Rock
  (2, 4), -- Imagine Dragons -> Electronic
  (3, 2), -- Нервы -> Rock
  (4, 3), -- Макс Корж -> Hip-Hop
  (5, 2); -- Rammstein -> Rock

-- Добавление альбомов (Album)
INSERT INTO Album (Title, Year) VALUES
  ('After Hours', 2020),
  ('Evolve', 2017),
  ('Нервы', 2021),
  ('Микс сборник 2019', 2019);

-- Связь исполнителей и альбомов (ArtistAlbum)
INSERT INTO ArtistAlbum (ArtistID, AlbumID)
VALUES
  (1, 1), -- The Weeknd -> After Hours
  (2, 2), -- Imagine Dragons -> Evolve
  (3, 3), -- Нервы -> Нервы
  (2, 4), -- Imagine Dragons -> Микс сборник 2019
  (1, 4); -- The Weeknd -> Микс сборник 2019

-- Добавление треков (Track)
INSERT INTO Track (Title, Duration, AlbumID) VALUES
  ('Blinding Lights', 202, 1), 
  ('Save Your Tears', 215, 1),  
  ('Believer', 204, 2),         
  ('Кури бамбук', 163, 3),      
  ('Мой путь', 248, 3),         
  ('My Demons', 237, 2),        
  ('Radioactive', 187, 2), 
  ('Мой город', 220, 4);   

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

-- Добавление сборников (Collection)
INSERT INTO Collection (Title, Year) VALUES
  ('Top Hits 2018', 2018),
  ('Микс сборник 2019', 2019),
  ('Hits of the Year 2020', 2020),
  ('Best of Rock', 2019);

-- Связь треков и сборников (TrackCollection)
INSERT INTO TrackCollection (TrackID, CollectionID)
VALUES
  (1, 3), -- Blinding Lights -> Hits of the Year 2020
  (2, 1), -- Save Your Tears -> Top Hits 2018
  (2, 3), -- Save Your Tears -> Hits of the Year 2020
  (3, 1), -- Believer -> Top Hits 2018
  (3, 4), -- Believer -> Best of Rock
  (7, 4), -- Radioactive -> Best of Rock
  (8, 2); -- Мой город -> Микс сборник 2019
