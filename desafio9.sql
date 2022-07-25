SELECT 
	COUNT(song_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.history
INNER JOIN SpotifyClone.users ON users.user_id = history.user_id
WHERE users.user = 'Bill';