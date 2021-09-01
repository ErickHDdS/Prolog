/* Ordenacao do vetor */
inserir(E, [], [E]).
inserir(E, [H|L1], [E,H|L1]) :- E=<H.
inserir(E, [H|L1], [H|Y]) :- inserir(E, L1, Y).

ordenar([], []).
ordenar([E|H], C) :- ordenar(H, L1), inserir(E, L1, C).

/* Pegar o menor elemento do vetor */
menor([M],M).
menor([A,B|X],M) :- B>A, menor([A|X],M).
menor([A,B|X],M) :- menor([B|X],M).

/* Pegar o maior elemento do vetor */
maior([], 0).
maior([E], E).
maior([E|V], M) :- maior(V, M), M>=E.
maior([E|V], E) :- maior(V, M), M<E.

/* Gerar a lista sem buracos */
gerar(E1, E1, [E1]).
gerar(E1, E2, [E1|V]) :- E2>=E1, VG is E1+1, gerar(VG, E2, V).
gerar(E1, E2, [E1|V]) :- E1>=E2, VG is E1-1, gerar(VG, E2, V).

/* Remover o elemento */
remover(_, [], []).
remover(ER, [E1|V], E2) :- ER == E1, remover(ER, V, E2).
remover(ER, [E1|V], [E1|E2]) :- ER =\= E1, remover(ER, V, E2).

/* Verificar se a lista gerado contem elementos da lista original */
verificar([],[],[]).
verificar([A|B], Y, V) :- remover(A, Y, R), verificar(B, R, V).
verificar([], Y, V) :- V = Y.

/* Modulo principal */
game([],[]).
game(A,L) :- menor(A, ME), maior(A, MA), gerar(ME, MA, VG), ordenar(A, VO), verificar(VO, VG, L).