select 
  count(*) quantidade_musicas_no_historico
 from SpotifyClone.Usuario u
 join SpotifyClone.Historico h on u.id = h.usuario_id
 group by u.nome, h.usuario_id
 having u.nome = 'Bill';