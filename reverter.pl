concatenar([], L, L).
concatenar([V|L1], L2, [V|L3]) :- concatenar(L1, L2, L3).

reverter([], _).
reverter([E1|E2], R) :- reverter(E2, V), concatenar(V, [E1], R).

/* Reverter	uma	lista. */