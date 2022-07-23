SELECT
	so.song_name AS nome,
    COUNT(ls.user_id) AS reproducoes
FROM 
	SpotifyClone.songs AS so
    INNER JOIN SpotifyClone.listened_songs AS ls
		ON so.song_id = ls.song_id
	INNER JOIN SpotifyClone.users AS us
		ON ls.user_id = us.user_id
	INNER JOIN SpotifyClone.plans AS pl
		ON us.plan_type = pl.plan_id
WHERE pl.plan_name IN ('gratuito', 'pessoal')
GROUP BY nome
ORDER BY nome ASC;