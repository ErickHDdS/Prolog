soma([], 0).
soma([X|L], S) :- soma(L, S1), S is X+S1.

nelementos([], 0).
nelementos([_|A], N) :- nelementos(A, B), N is B+1.

medio([], 0).
medio(A, M) :- soma(A, S), nelementos(A, N), M is S/N.

/* Obter	o	valor	médio	de	uma	lista	de	inteiros. */