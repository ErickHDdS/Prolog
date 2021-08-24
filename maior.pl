maior([A], A).
maior([A|B], M) :- maior(B, M), M>=A.
maior([A|B], A) :- maior(B, M), A>M.

/* Obter	o	maior	valor	de	uma	lista	de	inteiros. */