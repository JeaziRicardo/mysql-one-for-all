SELECT 
  song AS nome_musica, 
  CASE 
      WHEN song LIKE '%Streets' THEN REPLACE(song, 'Streets', 'Code Review')
      WHEN song LIKE '%Her Own' THEN REPLACE(song, 'Her Own', 'Trybe')
      WHEN song LIKE '%Inner Fire' THEN REPLACE(song, 'Inner Fire', 'Project')
      WHEN song LIKE '%Silly' THEN REPLACE(song, 'Silly', 'Nice')
      WHEN song LIKE '%Circus' THEN REPLACE(song, 'Circus', 'Pull Request')
  END AS novo_nome
FROM SpotifyClone.songs
WHERE song LIKE '%Streets' 
  OR song LIKE '%Her Own'
  OR song LIKE '%Inner Fire'
  OR song LIKE '%Silly' 
  OR song LIKE '%Circus'
ORDER BY song;