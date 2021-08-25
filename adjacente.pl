igual([], []).
igual([E|B], [E|C]) :- igual(B, C).

adjacente(X, Y, [A,B|V]) :- igual([X], [A]), igual([Y], [B]);
adjacente(X, Y, [B|V]).

/* Verificar se	um elemento	X é	adjacente a	um elemento	Y. */