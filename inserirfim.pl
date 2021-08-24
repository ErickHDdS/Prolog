inserirfim(A, [], [A]).
inserirfim(A, [B|F], [B|C]) :- inserirfim(A, F, C).

/* Obter	o	valor	médio	de	uma	lista	de	inteiros. */