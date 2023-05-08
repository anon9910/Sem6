% Prompt the user to enter two numbers and output their sum
go :- write('Enter the first number'),nl,read(X),
    write('Enter the second number'),nl,read(Y),
    sum(X,Y,Z),
    write('The sum is'),nl,
    write(Z).
% Define the 'sum' predicate that calculates the sum of two numbers
sum(X,Y,Z) :-
    % Calculate the sum of the two numbers and bind it to the 'Z' variable
    Z is X+Y.
