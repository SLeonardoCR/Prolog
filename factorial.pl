/****************************************************************

    Programa: factorial.pl
    Funcion: Calculo de Factoriales

    0! = 1, N! = N*(N-1)

****************************************************************/
main :-
    write('N: '), read(N), 
    factorial(N,F),
    write('El factorial de '), 
    write(N), write(' es '), 
    write(F), nl.

factorial(0, 1) :- !.
factorial(N, F) :-
    N1 is N-1,
    factorial(N1, F1),
    F is N*F1.