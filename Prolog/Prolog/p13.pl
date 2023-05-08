evenlength([]).
evenlength([_,_|T]) :- evenlength(T).

oddlength([_]).
oddlength([_,_|T]) :- oddlength(T).

main :-
    write('Enter a list: '),
    read(L),
    (   evenlength(L)
    ->  write('List has even length')
    ;   oddlength(L)
    ->  write('List has odd length')
    ;   write('List is empty')
    ).
