% Цепочка из трех бусин, помеченных латинскими буквами, формируется по следующему правилу.
% В конце цепочки стоит одна из бусин A, B, C. На первом месте – одна из бусин B, D, C, 
% которой нет на третьем месте. В середине – одна из бусин А, C, E, B, не стоящая на первом месте. 
% Написать определение цепочки и запрос на порождения всех цепочек, соответствующих правилу.

chain(3,[_, _, a]).
chain(3,[_, _, b]).
chain(3,[_, _, c]).
chain(1,[b, _, _]).
chain(1,[d, _, _]).
chain(1,[c, _, _]).
chain(2,[b, b, _]).
chain(2,[d, d, _]).
chain(2,[c, c, _]).
chain(4,[b, _, b]).
chain(4,[d, _, d]).
chain(4,[c, _, c]).

permutation(_, 0, []):-!.

permutation(List, Length, [Head | PermutationTail]):-
    member(Head, List),
    Length1 is Length - 1,
    permutation(List, Length1, PermutationTail).
