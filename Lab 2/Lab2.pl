% Дать определение N-ного члена геометрической прогрессии 

geometricSequence(A1, 1, _, A1).

geometricSequence(A1, N, R, AN):-
    N > 1,
    N1 is N-1,
    geometricSequence(A1, N1, R, X),
    AN is X*R.



