select 
	a.nome artista,
  al.nome album
 from SpotifyClone.Artista a
 join SpotifyClone.Album al on a.id = al.artista_id
 having artista = 'Walter Phoenix'
 order by album;