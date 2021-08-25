concatenar([], V, V).
concatenar([V|V1], V2, [V|V3]) :- concatenar(V1, V2, V3).

rotacionar([], []).
rotacionar([E1|E2], R) :- concatenar(E2, [E1], R).

rotacionarn(0, E1, E1).
rotacionarn(1, E1, E2) :- rotacionar(E1, E2).
rotacionarn(R, E1, E2) :- rotacionarn(X, E1, E3), rotacionar(E3, E2), R is X+1.

/* Rotacionar uma lista	'n' posições. */