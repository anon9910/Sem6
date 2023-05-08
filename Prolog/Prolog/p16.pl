insert_nth(E, 1, L, [E|L]).
insert_nth(E, N, [H|T], [H|R]) :-
    N1 is N - 1,
    insert_nth(E, N1, T, R).

% Main predicate to take input from user
main :-
    write('Enter a list: '),
    read(L),
    write('Enter the element to be inserted: '),
    read(E),
    write('Enter the position where the element should be inserted: '),
    read(N),
    insert_nth(E, N, L, R),
    write('Result: '),
    write(R).

