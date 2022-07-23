SELECT
	MIN(pl.plan_price) AS faturamento_minimo,
    MAX(pl.plan_price) AS faturamento_maximo,
    ROUND(AVG(pl.plan_price), 2) AS faturamento_medio,
    SUM(pl.plan_price) as faturamento_total
FROM
	SpotifyClone.users AS us
    INNER JOIN SpotifyClone.plans AS pl
		ON us.plan_type = pl.plan_id;