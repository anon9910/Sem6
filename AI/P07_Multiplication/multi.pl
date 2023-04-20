multi(N, 1, N).

multi(N1, N2, R) :-
    T is N2 - 1,
    multi(N1, T, R1),
    R is N1 + R1.
