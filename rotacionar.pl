concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

rotacionar([], []).
rotacionar([A|B], R) :- concatenar(B, [A], R).

/* Rotacionar	uma	lista	uma	posição. */