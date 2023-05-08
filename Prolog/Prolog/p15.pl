maxlist([H], H).
maxlist([H|T], M) :-
    maxlist(T, M1),
    H >= M1,
    M is H.
maxlist([H|T], M) :-
    maxlist(T, M1),
    H < M1,
    M is M1.

main :-
    write('Enter a list: '),
    read(List),
    maxlist(List, Max),
    write('The maximum number in the list is: '),
    write(Max).
