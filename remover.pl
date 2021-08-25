remover(_, [], []).
remover(ER, [E1|V], E2) :- ER==E1, remover(ER, V, E2).
remover(ER, [E1|V], [E1|E2]) :- ER=\=E1, remover(ER, V, E2).

/* Remover de uma lista	um elemento	(todas as suas ocorrências). */