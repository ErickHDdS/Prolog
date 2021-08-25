concatenar([], V, V).
concatenar([V|V1], V2, [V|V3]) :- concatenar(V1, V2, V3).

rotacionar([], []).
rotacionar([E1|E2], R) :- concatenar(E2, [E1], R).

/* Rotacionar uma lista	uma	posição. */