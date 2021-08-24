inserir(A, [], [A]).
inserir(A, [B|X], [A,B|X]) :- A=<B.
inserir(A, [B|X], [B|Y]) :- inserir(A, X, Y).

ordenar([], []).
ordenar([A|B], C):- ordenar(B, X), inserir(A, X, C).

/* Ordenar	uma	lista	de	inteiros. */