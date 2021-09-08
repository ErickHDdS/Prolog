verifica([], [], 0).
verifica([A|X], [B|Y], C) :- A == B, verifica(X, Y, C).
verifica([A|X], [B|Y], C) :- A \== B, verifica(X, Y, S), C is S + 1.

hamming(S1, S2, D):- verifica(S1, S2, D). 