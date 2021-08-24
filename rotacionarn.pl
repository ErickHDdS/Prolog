concatenar([], A, A).
concatenar([B|C], A, [B|D]) :- concatenar(C, A, D).

rotacionar([], []).
rotacionar([A|B], R) :- concatenar(B, [A], R).

rotacionarn(0, A, A).
rotacionarn(1, A, B) :- rotacionar(A, B).
rotacionarn(R, A, B) :- rotacionarn(X, A, C), rotacionar(C, B), R is X+1.

/* Rotacionar	uma	lista	'n' posições. */