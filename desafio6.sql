select
	round(min(valor),2) faturamento_minimo,
  round(max(valor), 2) faturamento_maximo,
  round(sum(valor) / count(*), 2) faturamento_medio,
  sum(valor) faturamento_total
from SpotifyClone.Plano p
join SpotifyClone.Usuario u on p.id = u.plano_id;