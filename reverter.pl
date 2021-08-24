concatenar([], A, A).
concatenar([B|C], A, [B|D]) :- concatenar(C, A, D).

reverter([], _).
reverter([A|B], R) :- reverter(B, X), concatenar(X, [A], R).

/* Reverter	uma	lista. */