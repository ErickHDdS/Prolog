remover(_, [], []).
remover(R, [B|X], C) :- R==B, remover(R, X, C).
remover(R, [B|X], [B|C]) :- R=\=B, remover(R, X, C).

/* Remover de uma lista	um elemento	(todas as suas ocorrências). */