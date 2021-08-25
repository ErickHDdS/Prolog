nelementos([], 0).
nelementos([_|V], N) :- nelementos(V, C), N is C+1.

/* Obter o número de elementos de uma lista. */