concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

reverter([], _).
reverter([A|B], R) :- reverter(B, X), concatenar(X, [A], R).

/* Reverter	uma	lista. */