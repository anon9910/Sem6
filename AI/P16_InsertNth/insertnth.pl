insert_nth(E, 1, L, [E|L]).

insert_nth(E, N, [H|T], [H|R]) :-
    N1 is N - 1,
    insert_nth(E, N1, T, R).
