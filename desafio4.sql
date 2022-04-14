select 
	u.nome usuario,
  if(max((year(h.`data`))) = 2021, 'Usuário ativo', 'Usuário inativo') condicao_usuario
from SpotifyClone.Usuario u
join SpotifyClone.Historico h on u.id = h.usuario_id
group by usuario
order by usuario; 