power :-
    write('Enter a number: '), read(Num),
    write('Enter the power: '), read(Pow),
    power(Num, Pow, Ans),
    write('Ans: '), write(Ans). % Display the Ans

power(0, Pow, 0) :- Pow > 0.
power(Num, 0, 1) :- Num > 0.
power(Num, Pow, Ans) :-
    Num > 0,
    Pow > 0,
    P1 is Pow - 1,
    power(Num, P1, A1),
    Ans is Num * A1.

