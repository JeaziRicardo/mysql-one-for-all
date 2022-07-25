SELECT
	user AS usuario,
  IF(YEAR(MAX(reprod_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') 
		AS condicao_usuario
FROM SpotifyClone.users
INNER JOIN SpotifyClone.history ON users.user_id = history.user_id
GROUP BY user
ORDER BY user;