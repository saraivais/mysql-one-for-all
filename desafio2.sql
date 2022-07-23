SELECT
	COUNT(DISTINCT so.song_id) AS 'cancoes',
	COUNT(DISTINCT ar.artist_id) AS 'artistas',
  COUNT(DISTINCT al.album_id) AS 'albuns'
FROM
	SpotifyClone.artists AS ar,
  SpotifyClone.albums AS al,
  SpotifyClone.songs AS so;