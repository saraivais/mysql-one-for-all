SELECT 
	COUNT(DISTINCT so.song_id) AS cancoes,
    COUNT(DISTINCT art.artist_id) AS artistas,
	COUNT(DISTINCT alb.album_id) AS albuns
FROM 
	SpotifyClone.songs AS so
    INNER JOIN SpotifyClone.albums AS alb
		ON so.album_id = alb.album_id
    INNER JOIN SpotifyClone.artists AS art
		ON alb.artist_id = art.artist_id;