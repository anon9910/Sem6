% Define the 'go' predicate that prompts the user to enter a number and calculates its factorial
go :-
    write('Enter a number: '), read(N),
    factorial(N, F),
    % Output the factorial to the console
    write('Factorial of '), write(N), write(' is '), write(F).

% Define the 'factorial' predicate that calculates the factorial of a number
factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1,F1),
    F is N * F1.
