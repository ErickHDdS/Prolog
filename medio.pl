soma([], 0).
soma([A|B], S) :- soma(B, C), S is A+C.

nelementos([], 0).
nelementos([_|A], N) :- nelementos(A, B), N is B+1.

medio([], 0).
medio(A, M) :- soma(A, S), nelementos(A, N), M is S/N.

/* Obter	o	valor	médio	de	uma	lista	de	inteiros. */