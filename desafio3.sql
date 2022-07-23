SELECT
	us.user_name AS usuario,
  COUNT(ls.song_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(so.duration_seconds/60), 2) AS total_minutos
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.listened_songs AS ls
	ON us.user_id = ls.user_id
INNER JOIN SpotifyClone.songs AS so
	ON ls.song_id = so.song_id
GROUP BY us.user_id
ORDER BY us.user_name ASC;