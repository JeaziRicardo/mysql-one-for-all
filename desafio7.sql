SELECT
	artist AS artista,
	album AS album,
	COUNT(followers.artist_id) AS seguidores
FROM SpotifyClone.artists
INNER JOIN SpotifyClone.albums ON albums.artist_id = artists.artist_id
INNER JOIN SpotifyClone.followers ON followers.artist_id = artists.artist_id
GROUP BY artista, album, followers.artist_id
ORDER BY seguidores DESC, artista, album;
