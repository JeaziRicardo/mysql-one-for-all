SELECT
	MIN(plan_value) AS faturamento_minimo,
	MAX(plan_value) AS faturamento_maximo,
	ROUND(SUM(plan_value) / 10, 2) AS faturamento_medio,
  ROUND(SUM(plan_value), 2) AS faturamento_total
FROM SpotifyClone.plans
INNER JOIN SpotifyClone.users ON users.plan_id = plans.plan_id; 
