-- 1 задание --
SELECT name, COUNT(name) FROM genre
JOIN genre_artist ON genre_artist.genre_id = genre.genre_id
GROUP BY name;
--2 задание --
SELECT album.name, COUNT(track.track_id) FROM track
JOIN album ON album.album_id = track.albumid
WHERE year BETWEEN 2019 AND 2020
GROUP BY album.name;
-- 2 задание.решение 2 --
SELECT album.name, album.year, COUNT(track.track_id) FROM track
JOIN album ON album.album_id = track.albumid
GROUP BY album.year, album.name
HAVING album.year = '2019' OR album.year = '2020';
-- 3 задание --
SELECT album.name, round(AVG(length)) FROM  track
JOIN album ON album.album_id = track.albumid
GROUP BY album.name;
-- 4 задание --
SELECT ar.name, al.year FROM artist ar
JOIN album_artist a_a ON ar.artist_id = a_a.artist_id
JOIN album al ON a_a.album_id = al.album_id
WHERE year != 2020;
-- 5 задание --
SELECT c.name FROM tracks_collection tc
JOIN collection c ON c.collection_id = tc.collection_id
JOIN track tr ON tc.track_id = tr.track_id
JOIN album al on tr.albumid = al.album_id
JOIN album_artist a_a ON al.album_id = a_a.album_id
JOIN artist ar ON ar.artist_id = a_a.artist_id
WHERE ar.name = 'Lana Del Ray'
GROUP BY c.name;
-- 6 задание --
SELECT al.name FROM album_artist a_a
JOIN album al ON a_a.album_id = al.album_id
JOIN artist ar ON a_a.artist_id = ar.artist_id
JOIN genre_artist ga ON ar.artist_id = ga.artist_id
JOIN genre g ON ga.genre_id = g.genre_id
GROUP BY al.name
HAVING COUNT(g.name) > 1;
-- 7 задание --
SELECT tr.name FROM track tr
FULL OUTER JOIN tracks_collection tc ON tr.track_id = tc.track_id
LEFT JOIN collection c ON tc.collection_id = c.collection_id
WHERE c.collection_id IS NULL;
-- 8 задание --
SELECT a.name, tr.length from artist a
JOIN album_artist a_a ON a.artist_id = a_a.artist_id
JOIN album al ON a_a.album_id = al.album_id
JOIN track tr ON al.album_id = tr.albumid
WHERE tr.length = (
SELECT MIN(tr.length) FROM track tr
);
-- 9 задание --
SELECT al.name, COUNT(tr.track_id) FROM album al
JOIN track tr ON al.album_id = tr.albumid
GROUP BY al.name
HAVING COUNT(tr.track_id) = (SELECT MIN(count) FROM
                                (SELECT album.name, COUNT(track.track_id) count FROM track
                                JOIN album ON album.album_id = track.albumid
                                GROUP BY album.name) as c
                            );

