incrementar([], []).
incrementar([E|V1], [I|V2]) :- I is E+1, incrementar(V1, V2).

/* Incrementar em uma unidade cada elemento	de uma lista de	inteiros. */