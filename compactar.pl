compactar([], []).
compactar([A], [[1,A]]).
compactar([A, A|X], [[Y,A]|Z]) :- compactar([A|X], [[C,A]|Z]), Y is C+1.
compactar([A, B|X], [[1,A], [C,B]|Z]) :- compactar([B|X], [[C,B]|Z]), A\==B.

/* Compactar	uma	lista	de	elementos	consecutivos. */