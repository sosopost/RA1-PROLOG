% motor.pl
% Regras para calcular pontuação e gerar ranking

:- dynamic resposta/2.   % resposta(ID, s/n)

% Calcula pontuação de uma trilha
calcula_pontuacao_trilha(Trilha, PontuacaoFinal) :-
    findall(Peso-Caracteristica, perfil(Trilha, Caracteristica, Peso), Perfis),
    soma_pontos(Perfis, 0, PontuacaoFinal).

soma_pontos([], Acc, Acc).
soma_pontos([Peso-Car | Resto], Acc, Final) :-
    ( resposta_positiva(Car) -> Acc1 is Acc + Peso ; Acc1 is Acc ),
    soma_pontos(Resto, Acc1, Final).

% Verdadeiro se existe pergunta associada e foi respondida 's'
resposta_positiva(Caracteristica) :-
    pergunta(ID, _, Caracteristica),
    resposta(ID, s).

% Calcula pontuação de todas as trilhas e retorna lista Pontuacao-Trilha
calcula_todas_pontuacoes(Ranking) :-
    findall(Pontuacao-Trilha,
        (trilha(Trilha,_), calcula_pontuacao_trilha(Trilha, Pontuacao)),
        Ranking).

% Recomenda: retorna lista ordenada (pontuação decrescente) de Pontuacao-Trilha
recomenda(RankingOrdenado) :-
    calcula_todas_pontuacoes(Ranking),
    keysort(Ranking, SortedAsc),   % ordena por pontuação crescente
    reverse(SortedAsc, RankingOrdenado). % inverte para decrescente
