igual([], []).
igual([A|B], [A|C]) :- igual(B, C).

adjacente(X, Y, [A,B|R]) :- igual([X], [A]), igual([Y], [B]);
adjacente(X, Y, [B|R]).

/* Verificar se	um elemento	X é	adjacente a	um elemento	Y. */