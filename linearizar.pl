concatenar([], V, V).
concatenar([R|V1], V2, [R|V3]) :- concatenar(V1, V2, V3).

linearizar([], []).
linearizar([E1|E2], V) :- concatenar(E1, E3, V), linearizar(E2, E3).

/* Linearizar uma lista de inteiros. */