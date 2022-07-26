SELECT
	artist AS artista,
  albums.album AS album
FROM SpotifyClone.artists
INNER JOIN SpotifyClone.albums ON artists.artist_id = albums.artist_id
WHERE artist = 'Walter Phoenix';