SELECT
	art.artist_name AS artista,
    alb.album_name AS album
FROM
	SpotifyClone.albums AS alb
    INNER JOIN SpotifyClone.artists AS art
		ON alb.artist_id = art.artist_id
WHERE art.artist_name = 'Walter Phoenix';