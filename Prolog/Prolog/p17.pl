main :-
    write('Enter a list: '),
    read(L),
    write('Enter the position to delete: '),
    read(N),
    delete_nth(N, L, R),
    write('Result: '),
    write(R).

delete_nth(1, [_|T], T).
delete_nth(N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    delete_nth(N1, T, R).
