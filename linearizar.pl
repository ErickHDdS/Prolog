concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

linearizar([], []).
linearizar([A|B], L) :- concatenar(A, C, L), linearizar(B, C).

/* Linearizar uma lista de inteiros. */