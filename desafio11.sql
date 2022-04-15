select
	nome nome_musica,
    case
		when nome = 'Dance With Her Own' then replace(nome, 'Her Own', 'Trybe')
    when nome = "Let's Be Silly" then replace(nome, 'Silly', 'Nice')
		when nome = 'Magic Circus' then replace(nome, 'Circus', 'Pull Request')
		when nome = 'Troubles Of My Inner Fire' then replace(nome, 'Inner Fire', 'Project')
		when nome = 'Without My Streets' then replace(nome, 'Streets', 'Code Review')
    else nome
    end novo_nome
from SpotifyClone.Cançao
where nome in ('Dance With Her Own', "Let's Be Silly", 'Magic Circus', 'Troubles Of My Inner Fire', 'Without My Streets')
order by nome;   