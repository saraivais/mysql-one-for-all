SELECT
	so.song_name AS cancao,
    COUNT(ls.song_id) AS reproducoes
FROM
	SpotifyClone.songs AS so
    INNER JOIN SpotifyClone.listened_songs AS ls
		ON so.song_id = ls.song_id
GROUP BY so.song_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;