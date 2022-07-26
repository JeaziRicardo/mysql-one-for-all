SELECT
	song As nome,
	COUNT(history.song_id) AS reproducoes
FROM SpotifyClone.plans
INNER JOIN SpotifyClone.users ON plans.plan_id = users.plan_id
INNER JOIN SpotifyClone.history ON history.user_id = users.user_id
INNER JOIN SpotifyClone.songs ON songs.song_id = history.song_id
WHERE plan = 'gratuito' OR plan = 'pessoal'
GROUP BY history.song_id
ORDER BY song;