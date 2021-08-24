gerar(A, A, [A]).
gerar(A, B, [A|X]) :- A=<B, V is A+1, gerar(V, B, X).
gerar(A, B, [A|X]) :- A>=B, V is A-1, gerar(V, B, X).

/* Gerar	uma	lista	com	os	elementos	de	uma	faixa	(inclusive). */