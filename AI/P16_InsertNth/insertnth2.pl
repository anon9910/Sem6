mem(X, [X|_]).
mem(X, [_|T]) :- mem(X, T).

insert(I, [X|Y], [L|_]).

insert(I, P, [X|Y], [X|M]) :-
    P > 1,
    p1 is P - 1,
    insert(I, P1, Y, M).

insert(I, 1, [X|Y], M) :-
    append([[I], [X|Y], M]).
