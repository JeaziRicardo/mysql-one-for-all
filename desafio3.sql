SELECT 
	user AS usuario,
  COUNT(history.user_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(duration_sec) / 60, 2) AS total_minutos 
FROM SpotifyClone.users
INNER JOIN SpotifyClone.history ON users.user_id = history.user_id
INNER JOIN SpotifyClone.songs ON history.song_id = songs.song_id
GROUP BY history.user_id
ORDER BY user;