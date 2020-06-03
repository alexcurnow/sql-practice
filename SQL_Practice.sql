--SELECT
--song.Id as SongId, 
--Title,
--ArtistId,
--artist.ArtistName
--FROM Song song
--JOIN Artist artist on Song.ArtistId = artist.Id

--SELECT
--ArtistName,
--Title,
--Genre.Label
--FROM Artist
--JOIN Album on Artist.Id = Album.ArtistId
--JOIN Genre on Album.GenreId = Genre.Id
--WHERE Genre.Label = null;

--SELECT
--Album.Title as Album,
--Song.Title as Song
--FROM Album album
--LEFT JOIN Song song on song.AlbumId = null;

--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('The 1975', 2002)
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
--VALUES ('ILIWYSFYASBYSUOI', '2/26/2016', 4435, 'Interscope', 28, 7)

--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--VALUES ('Love Me', 222, '10/08/2015', 7, 28, 23)

--SELECT 
--	a.Title as AlbumTitle,
--	s.Title as SongTitle, 
--	artist.ArtistName,
--	genre.Label as Genre
--FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id
--LEFT JOIN Artist artist ON s.ArtistId = artist.Id
--LEFT JOIN Genre genre ON s.GenreId = genre.Id
--WHERE artist.ArtistName = 'The 1975';

--SELECT
--	album.Title,
--	Count(song.Id) as SongCount
--FROM Song song
--JOIN Album album ON song.AlbumId = album.Id
--GROUP BY album.Title;

--SELECT artist.ArtistName, Count(song.Id) as 'Song Count'
--FROM Artist artist
--JOIN Song song on song.ArtistId = artist.Id
--GROUP BY artist.ArtistName

--SELECT genre.Label, Count(song.Id) as 'Song Count'
--FROM Genre genre
--JOIN Song song on song.GenreId = genre.Id
--GROUP BY genre.Label;

--SELECT artist.ArtistName, Count(album.Label) as 'Label Count'
--FROM Artist artist
--JOIN Album album on album.ArtistId = artist.Id
--GROUP BY artist.ArtistName
--HAVING Count(album.Label) > 1;

--SELECT Title, AlbumLength
--FROM Album 
--WHERE AlbumLength = (
--SELECT Max(AlbumLength) FROM Album);

--SELECT song.Title, song.SongLength , album.Title
--FROM Song song
--JOIN Album album on song.AlbumId = album.Id
--WHERE SongLength = (SELECT Max(SongLength) FROM Song);

