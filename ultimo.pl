ultimo([U], U).
ultimo([_|A], B) :- ultimo(A, B).

/* Obter	o	último	elemento	de	uma	lista. */