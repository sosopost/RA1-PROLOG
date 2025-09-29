% main.pl
% Interface interativa

:- [sistema].
:- [motor].

iniciar :-
    retractall(resposta(_, _)),
    write('***Sistema Especialista para Recomendação de Trilha Acadêmica***'), nl,
    write('Responda com s (sim) ou n (nao)'), nl, nl,
    faz_perguntas,
    recomenda(Ranking),
    nl,
    exibe_resultado(Ranking),
    nl,
    write('**Fim da recomendação.**'), nl.

faz_perguntas :-
    findall([ID, Texto], pergunta(ID, Texto, _), Perguntas),
    percorre_perguntas(Perguntas).

percorre_perguntas([]).
percorre_perguntas([[ID, Texto] | Resto]) :-
    pergunta_usuario(ID, Texto),
    percorre_perguntas(Resto).

pergunta_usuario(ID, Texto) :-
    repeat,
    format('~w (s/n): ', [Texto]),
    read_line_to_string(user_input, Raw),
    normalize_space(string(S), Raw),
    string_lower(S, L),
    ( L = "" -> fail  % repete se vazio
    ; sub_string(L, 0, 1, _, C),
      ( C = "s" -> Resp = s
      ; C = "n" -> Resp = n
      ; writeln('Resposta inválida. Use apenas s ou n.'), nl, fail
      )
    ),
    assertz(resposta(ID, Resp)),
    !.

exibe_resultado([]) :-
    writeln('Nenhuma trilha encontrada.').
exibe_resultado([Pontuacao-Trilha | Resto]) :-
    trilha(Trilha, Descricao),
    format('~n--- Trilha Recomendada: ~w (Pontuação: ~w) ---~n', [Trilha, Pontuacao]),
    format('~w~n', [Descricao]),
    justifica_recomendacao(Trilha),
    exibe_resultado(Resto).

justifica_recomendacao(Trilha) :-
    findall(Texto-Peso,
        ( perfil(Trilha, Caracteristica, Peso),
          resposta_positiva(Caracteristica),
          pergunta(_, Texto, Caracteristica)
        ),
        Pairs),
    ( Pairs = [] ->
        writeln('  Nenhuma resposta positiva.')
    ;
        writeln('  Razões:'),
        forall(member(Texto-Peso, Pairs),
            format('    - ~w (relevância: ~w/5)~n', [Texto, Peso]))
    ).
