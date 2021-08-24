nelementos([], 0).
nelementos([_|A], N) :- nelementos(A, B), N is B+1.

/* Obter	o	número	de	elementos	de	uma	lista. */