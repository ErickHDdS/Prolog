concatenar([], A, A).
concatenar([B|C], A, [B|D]) :- concatenar(C, A, D).

rotacionar([], []).
rotacionar([A|B], R) :- concatenar(B, [A], R).

/* Rotacionar	uma	lista	uma	posição. */