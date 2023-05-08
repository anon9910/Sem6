nth_element(1, [H|_], H).
nth_element(N, [_|T], X) :-
    N > 1,
    N1 is N - 1,
    nth_element(N1, T, X).

main :-
    write('Enter a list: '),
    read(L),
    write('Enter the desired position: '),
    read(N),
    nth_element(N, L, X),
    write('The element at position '), write(N),
    write(' in the list '), write(L),
    write(' is '), write(X).
