append([], L, L).
append([H|L1], L2, [H|L3]) :- append(L1, L2, L3).

conc(L1, L2, L3) :- append(L1, L2, L3).

main :-
    write('Enter the first list: '), read(L1),
    write('Enter the second list: '), read(L2),
    conc(L1, L2, L3),
    write('The concatenated list is: '), write(L3),
    nl.
