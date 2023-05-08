memb(X, [X|_]) :- !.
memb(X, [_|L]) :- memb(X, L).

main :-
    write('Enter the list: '), read(L),
    write('Enter the element to check: '), read(X),
    (memb(X, L) -> write(X), write(' is a member of the list.') ;
    write(X), write(' is not a member of the list.')),
    nl.
