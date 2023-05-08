% Define the 'go' predicate that prompts the user to enter two numbers and calculates their maximum
go :- write('Enter the first number: '),read(X),nl,
    write('Enter the second number: '),read(Y),nl,
    max(X,Y,M),
    % Output the maximum to the console
    write('Maximum of two numbers is: '),write(M).
% Define the 'max' predicate that calculates the maximum of two numbers
max(X,Y,M):-
    X >=Y, % If X is greater than or equal to Y
    M is X. % then set the maximum to X
max(X,Y,M) :-
    X<Y, % Otherwise, if X is less than Y
    M is Y. % set the maximum to Y
