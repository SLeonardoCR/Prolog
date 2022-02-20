/****************************************************************
 
    Programa: datos.pl
    Funcion: Calcular Algunas Estadísticas

****************************************************************/

main :-
    write('Numero de datos: '), read(N), N>0,
    lectura(N, N, Total, Max, Min),
    write('El total es: '), write(Total), nl,
    Prom is Total/N,
    write('El promedio es: '), write(Prom), nl.
    write('El maximo es: '), write(Max), nl.
    write('El minimo es: '), write(Min), nl.

lectura(N, 1, X, X, X) :- 
    write('Dato '), write(N), write(': '),
    read(X), !. 
    % _ SIGNIFICA UNA VARIABLE QUE SE LE ES INDIFERENTE A SU VALOR
lectura(N, F, Total, Max, Min) :- 
    T is N-F+1;
    write('Dato '), write(T), write(': '), read(X),
    F1 is F-1,
    lectura(N, F1, Total1, Max1, Min1),
    maximo(X, Max1, Min), 
    minimo(X, Min1, Min),
    Total is X+Total1.

maximo(A, B, A) :- A >= B, !.
maximo(_, B, B).

minimo(A, B, A) :- A =< B, !.
minimo(_, B, B).