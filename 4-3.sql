-- Количество исполнителей в каждом жанре
SELECT g.Name AS Жанр, COUNT(ag.ArtistID) AS Количество_исполнителей
FROM Genre g
LEFT JOIN ArtistGenre ag ON g.GenreID = ag.GenreID
GROUP BY g.Name
ORDER BY Количество_исполнителей DESC;

-- Количество треков, вошедших в альбомы 2019–2020 годов
SELECT COUNT(t.TrackID) AS Количество_треков
FROM Track t
JOIN Album a ON t.AlbumID = a.AlbumID
WHERE a.Year BETWEEN 2019 AND 2020;

-- Средняя продолжительность треков по каждому альбому
SELECT a.Title AS Альбом, 
       ROUND(AVG(t.Duration), 2) AS a_dur
       -- ROUND(AVG(t.Duration)/60, 2) AS -- Средняя продолжительность мин
FROM Album a
JOIN Track t ON a.AlbumID = t.AlbumID
GROUP BY a.AlbumID, a.Title
ORDER BY a_dur DESC;

-- Все исполнители, которые не выпустили альбомы в 2020 году
SELECT ar.Name AS Исполнитель
FROM Artist ar
WHERE ar.ArtistID NOT IN (
    SELECT DISTINCT aa.ArtistID
    FROM ArtistAlbum aa
    JOIN Album al ON aa.AlbumID = al.AlbumID
    WHERE al.Year = 2020
)
ORDER BY ar.Name;

-- Названия сборников, в которых присутствует исполнитель Imagine Dragons
SELECT DISTINCT c.Title AS Сборник, c.Year AS Год
FROM Collection c
JOIN TrackCollection tc ON c.CollectionID = tc.CollectionID
JOIN Track t ON tc.TrackID = t.TrackID
JOIN Album a ON t.AlbumID = a.AlbumID
JOIN ArtistAlbum aa ON a.AlbumID = aa.AlbumID
JOIN Artist ar ON aa.ArtistID = ar.ArtistID
WHERE ar.Name = 'Imagine Dragons'
ORDER BY c.Year;
