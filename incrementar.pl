incrementar([], []).
incrementar([A|B], [I|X]) :- I is A+1, incrementar(B, X).

/* Incrementar	em	uma	unidade	cada	elemento	de	uma	lista	de	inteiros. */