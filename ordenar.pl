inserir(E, [], [E]).
inserir(E, [H|L1], [E,H|L1]) :- E=<H.
inserir(E, [H|L1], [H|Y]) :- inserir(E, L1, Y).

ordenar([], []).
ordenar([E|H], C):- ordenar(H, L1), inserir(E, L1, C).

/* Ordenar uma lista de inteiros. */