select 
	c.nome cancao,
  count(h.cançao_id) reproducoes
from SpotifyClone.Cançao c
join SpotifyClone.Historico h on c.id = h.cançao_id
group by c.nome
order by reproducoes desc, c.nome limit 2;