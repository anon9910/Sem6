max(X, Y) :-
    X == Y -> (write('X and Y are equal'), nl);
    X > Y -> (Z is X, write(Z), nl);
    X < Y -> (Z is Y, write(Z), nl).