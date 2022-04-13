select 
	count(c.nome) cancoes,
    count(distinct a.nome) albuns,
    count(distinct ar.nome) artistas
from SpotifyClone.Cançao c 
join SpotifyClone.Album a on c.album_id = a.id
join SpotifyClone.Artista ar on ar.id = a.artista_id;  