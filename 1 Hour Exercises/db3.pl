%has(albert, olive).

owns(albert, pet(cat, olive)).

customer(tom, smith, 20.55).
customer(sally, smith, 120.55).
customer(sally, mars, 70.55).
customer(sally, mallard, 85.55).

get_cust_ball(FName, LName) :-
    customer(FName, LName, Bal),
    format('~w ~w owes us $~2f ~n', [FName, LName, Bal]).

%check is its a vertical line 
vertical(line(X, Y), line(X, Y2)).

%check is its a horizontal line 
horizontal(line(X, Y), line(X2, Y)).