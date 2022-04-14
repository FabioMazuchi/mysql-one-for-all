select 
	c.nome,
	count(h.usuario_id) reproducoes
 from SpotifyClone.Historico h
 join SpotifyClone.Cançao c on h.cançao_id = c.id 
 join SpotifyClone.Usuario u on h.usuario_id = u.id
 where u.plano_id in (1, 4)
 group by nome
 order by c.nome;