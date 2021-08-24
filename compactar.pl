compactar([], []).
compactar([E1], [[1,E1]]).
compactar([E1,E1|V], [[N,E1]|Y]) :- compactar([E1|V], [[C,E1]|Y]), N is C+1.
compactar([E1,E2|V], [[1,E1], [C,E2]|Y]) :- compactar([E2|V], [[C,E2]|Y]), E1\==E2.

/* Compactar uma lista de elementos	consecutivos. */