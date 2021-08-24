soma([], 0).
soma([E|V], S) :- soma(V, S1), S is E+S1.

nelementos([], 0).
nelementos([_|V], N) :- nelementos(V, C), N is C+1.

medio([], 0).
medio(V, M) :- soma(V, S), nelementos(V, N), M is float(S/N).

/* Obter o valor médio de uma lista de inteiros. */