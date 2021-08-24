gerar(E1, E1, [E1]).
gerar(E1, E2, [E1|V]) :- E2>=E1, VG is E1+1, gerar(VG, E2, V).
gerar(E1, E2, [E1|V]) :- E1>=E2, VG is E1-1, gerar(VG, E2, V).

/* Gerar uma lista com os elementos	de uma faixa (inclusive). */