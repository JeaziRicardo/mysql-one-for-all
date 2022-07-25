SELECT
	song AS cancao,
  COUNT(history.song_id) AS reproducoes
FROM SpotifyClone.songs
INNER JOIN SpotifyClone.history ON songs.song_id = history.song_id
GROUP BY history.song_id
ORDER BY reproducoes DESC, song
LIMIT 2;