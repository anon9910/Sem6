gcd :- write('Enter the first number: '), read(X), nl,
       write('Enter the second number: '), read(Y), nl,
       find_gcd(X, Y, G),
       write('GCD of '), write(X), write(' and '), write(Y), write(' is '), write(G), nl.

find_gcd(X, Y, G) :-
        X == 0 -> G = Y;
        Y == 0 -> G = X;
        X == Y -> G = X;
        X > Y -> Z is X - Y, find_gcd(Z, Y, G);
        Y > X -> C is Y - X, find_gcd(X, C, G).
