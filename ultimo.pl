ultimo([E], E).
ultimo([_|V], U) :- ultimo(V, U).

/* Obter o último elemento de uma lista. */