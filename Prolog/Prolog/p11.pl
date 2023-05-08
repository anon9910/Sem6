append([], L, L).
append([H|L1], L2, [H|L3]) :- append(L1, L2, L3).

reverse([], []).
reverse([H|T], R) :- reverse(T, L1), append(L1, [H], R).

palindrome(L) :- reverse(L, L).

main :-
    write('Enter a list: '), read(L),
    (palindrome(L) -> write('The list is a palindrome.')
                    ; write('The list is not a palindrome.')),
    nl.
