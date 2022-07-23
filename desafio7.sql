SELECT
	art.artist_name AS artista,
    alb.album_name AS album,
    COUNT(fa.user_id) AS seguidores
FROM
	SpotifyClone.favorited_artists AS fa
	INNER JOIN SpotifyClone.artists AS art
		ON fa.artist_id = art.artist_id
	INNER JOIN SpotifyClone.albums AS alb
		ON art.artist_id = alb.artist_id
GROUP BY fa.artist_id, alb.album_name
ORDER BY seguidores DESC, artista ASC, album ASC;