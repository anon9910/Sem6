evenlength :- write('true --> even').
oddlength :- write('true --> odd').

oddeven(List) :-
    length(List, L),
    L1 is mod(L, 2),
    L1 =:= 0 -> evenlength;
    oddlength.
