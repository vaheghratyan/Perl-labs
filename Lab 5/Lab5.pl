delete(H, [H | T], T).

delete(X, [H | T],[H | T1]):-
    delete(X, T, T1).

generate([],[]).

generate(L0, [H | L2]):- 
    delete(H, L0, L1),
    generate(L1, L2).

check(1, [X, Y, _, _]):- 
    not(X == Y).
check(2, [X, _, _, Y]):- 
    not(X == Y).
check(3, [_, _, X, Y]):- 
    not(X == Y).
check(4, [X, _, Y, _]):- 
    not(X == Y).
check(5, [_, X, _, Y]):- 
    not(X == Y).
check(6, [X, _, _, _]):- 
    not(X == bulgarian).

findSolution(X, Y):-
    generate(X, Y),
    check(1, Y),
    check(2, Y),
    check(3, Y),
    check(4, Y),
    check(5, Y),
    check(6, Y).

