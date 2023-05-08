% Define the 'go' predicate that prompts the user to enter a number and calculates the Nth term of the Fibonacci series
go :-
    write('Enter a number: '), read(N),
    generate_fib(N, T),
    % Output the result to the console
    write('The '), write(N), write('th term of the Fibonacci series is '), write(T).

% Define the 'generate_fib' predicate that generates the Nth term of the Fibonacci series
generate_fib(0, 1).
generate_fib(1, 1).
generate_fib(N, T) :-
    N > 1,
    N1 is N - 1,
    generate_fib(N1, T1),
    N2 is N - 2,
    generate_fib(N2, T2),
    T is T1 + T2.
