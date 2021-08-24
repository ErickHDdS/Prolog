concatenar([], A, A).
concatenar([B|C], A, [B|D]) :- concatenar(C, A, D).

linearizar([], []).
linearizar([A|B], L) :- concatenar(A, C, L), linearizar(B, C).

/* Linearizar	uma	lista	de	inteiros. */