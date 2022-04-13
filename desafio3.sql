select 
	u.nome usuario,
  count(h.cançao_id) qtde_musicas_ouvidas,
  round(sum(c.duracao_segundos) / 60, 2) total_minutos
from SpotifyClone.Usuario u
join SpotifyClone.Historico h on u.id = h.usuario_id
join SpotifyClone.Cançao c on c.id = h.cançao_id
group by u.nome order by u.nome; 