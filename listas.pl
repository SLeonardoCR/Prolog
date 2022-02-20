/****************************************************************

    Programa: listas.pl 
    Algunos Predicados con Listas

****************************************************************/

longitud([],0) :- !.
longitud([_ | Resto], X) :- 
    longitud(Resto, Y),
    X is Y+1.

concatena([], Lista, Lista) :- !.
concatena([X | Resto], Lista, [X | Otra]) :-
    concatena(Resto, Lista, [X | Otra]).

inversa([], []) :- !.
inversa([X | Resto], Lista) :- 
    inversa(Resto, Otra),
    concatena(Otra, [X], Lista).

inserta(X, [], [X]) :- !.
inserta(X, Lista, [X | Lista]).
inserta(X, [Y | Resto], [Y | Otra]) :-
    inserta(X, Resto, Otra).

permutacion([], []) :- !.
permutacion([X | Resto], Lista) :-
    permutacion(Resto, Otra),
    inserta(X, Otra, Lista).

lectura :-
    write('Da un conjunto (lista): '), nl, read(X),
    longitud(X, Y),
    write('El conjunto es: '), write(X), nl,
    write('Su cardinalidad es: '), write(Y), nl.