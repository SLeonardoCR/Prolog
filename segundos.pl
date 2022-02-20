/****************************************************************
 
    Programa: Segundo.pl
    Función: Leer segundos desde 1970.01.01 en Greenwich

****************************************************************/

main :-
    get_time(X),
    Y is truncate(X),
    write('Segundos desde 1970.01.01 en Greenwich: '), 
    write(Y), nl,
    stamp_date_time(X, FechaHora, 21600),
    write(FechaHora), nl.