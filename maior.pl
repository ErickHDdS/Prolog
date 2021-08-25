maior([], 0).
maior([E], E).
maior([E|V], M) :- maior(V, M), M>=E.
maior([E|V], E) :- maior(V, M), M<E.

/* Obter o maior valor de uma lista de inteiros. */