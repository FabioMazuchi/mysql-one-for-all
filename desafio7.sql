select
	a.nome artista,
  al.nome album,
  count(s.artista_id) seguidores
from SpotifyClone.Artista a
join SpotifyClone.Album al on a.id = al.artista_id
join SpotifyClone.Seguidores s on s.artista_id = a.id
group by a.nome, al.nome
order by seguidores desc, artista, album;   