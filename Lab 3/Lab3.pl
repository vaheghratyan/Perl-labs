% Написать определение для предиката “длина списка”

listLength([], 0).

listLength([_|Tail], Length):-
    listLength(Tail, TailLength),
    Length is TailLength + 1.