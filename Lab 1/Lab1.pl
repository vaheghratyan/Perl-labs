% Определение фактического состояния перекрестка (сколько автомобилей, с какой стороны подъехали)
% и правил проезда равнозначного перекрестка.
% Считать, что пересекающиеся дороги ориентированы по сторонам света

car("Лада 2107").
car("Лада Приора").
car("Hammer").
car("Mercedez Benz").

north("Лада 2107").
west("Лада Приора").
west("Hammer").
east(0):-
    false.
south("Mercedez Benz").

drive(X):-
    north(X),not(west(_)),car(X);
    west(X),not(south(_)),car(X);
    south(X),not(east(_)),car(X);
    east(X),not(north(_)),car(X).



