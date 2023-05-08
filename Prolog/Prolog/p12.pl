sumlist([], 0).
sumlist([H|T], S) :- sumlist(T, S1), S is H + S1.

sum :-
    write('Enter a list: '), read(L),
    sumlist(L, S),
    write('The sum of the list is '), write(S),
    nl.
