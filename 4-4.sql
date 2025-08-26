Готово! Вот запросы для каждой задачи:

-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра
SELECT DISTINCT a.Title AS Альбом
FROM Album a
JOIN ArtistAlbum aa ON a.AlbumID = aa.AlbumID
JOIN Artist ar ON aa.ArtistID = ar.ArtistID
WHERE ar.ArtistID IN (
    SELECT ag.ArtistID
    FROM ArtistGenre ag
    GROUP BY ag.ArtistID
    HAVING COUNT(ag.GenreID) > 1
)
ORDER BY a.Title;

-- Наименования треков, которые не входят в сборники
SELECT t.Title AS Трек
FROM Track t
LEFT JOIN TrackCollection tc ON t.TrackID = tc.TrackID
WHERE tc.TrackID IS NULL
ORDER BY t.Title;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек
SELECT ar.Name AS Исполнитель, t.Title AS Трек, t.Duration AS Длительность
FROM Track t
JOIN Album a ON t.AlbumID = a.AlbumID
JOIN ArtistAlbum aa ON a.AlbumID = aa.AlbumID
JOIN Artist ar ON aa.ArtistID = ar.ArtistID
WHERE t.Duration = (SELECT MIN(Duration) FROM Track)
ORDER BY ar.Name;


--Названия альбомов, содержащих наименьшее количество треков
SELECT a.Title AS Альбом, COUNT(t.TrackID) AS Количество_треков
FROM Album a
JOIN Track t ON a.AlbumID = t.AlbumID
GROUP BY a.AlbumID, a.Title
HAVING COUNT(t.TrackID) = (
    SELECT COUNT(t2.TrackID)
    FROM Album a2
    JOIN Track t2 ON a2.AlbumID = t2.AlbumID
    GROUP BY a2.AlbumID
    ORDER BY COUNT(t2.TrackID)
    LIMIT 1
)
ORDER BY a.Title;
