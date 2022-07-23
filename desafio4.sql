SELECT
	us.user_name AS usuario,
	CASE
		WHEN MAX(YEAR(ls.when_listened)) >= 2021 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS condicao_usuario
FROM 
	SpotifyClone.listened_songs AS ls
    INNER JOIN SpotifyClone.users AS us
		ON ls.user_id = us.user_id
GROUP BY
	ls.user_id
ORDER BY us.user_name;