SELECT
	song_name AS nome_musica,
    CASE
		WHEN song_name LIKE '%Streets' THEN REPLACE (song_name, 'Streets', 'Code Review')
        WHEN song_name LIKE '%Her Own' THEN REPLACE (song_name, 'Her Own', 'Trybe')
        WHEN song_name LIKE '%Inner Fire' THEN REPLACE (song_name, 'Inner Fire', 'Project')
        WHEN song_name LIKE '%Silly' THEN REPLACE (song_name, 'Silly', 'Nice')
        WHEN song_name LIKE '%Circus' THEN REPLACE (song_name, 'Circus', 'Pull Request')
        ELSE song_name
	END AS novo_nome
FROM SpotifyClone.songs
WHERE 
	(song_name LIKE '%Streets'
    OR song_name LIKE '%Her Own'
    OR song_name LIKE '%Inner Fire'
    OR song_name LIKE '%Silly'
    OR song_name LIKE '%Circus')
ORDER BY nome_musica ASC;