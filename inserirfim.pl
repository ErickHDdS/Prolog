inserirfim(E, [], [E]).
inserirfim(E, [H|L1], [H|L2]) :- inserirfim(E, L1, L2).

/* Obter	o	valor	médio	de	uma	lista	de	inteiros. */