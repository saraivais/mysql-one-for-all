SELECT
	COUNT(ls.song_id) AS quantidade_musicas_no_historico
FROM
	SpotifyClone.listened_songs AS ls
    INNER JOIN SpotifyClone.users AS us
		ON ls.user_id = us.user_id
WHERE us.user_name = 'Bill';