happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

dances(alice) :-
    happy(alice),
    with_albert(alice).

male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

get_grandchild :-
    parent(albert, X),
    parent(X, Y),
    write('Alberts grandchild is: '),
    write(Y), nl.

get_grandparent :-
    parent(X, carl),
    parent(X, charlie),
    write(X), write(' is the grandparent.'), nl.

brother(bob, bill).

grand_parent(X, Y) :-
    parent(Z, X), 
    parent(Y, Z).

human(derek).
blushes(X) :- 
    human(X).

stabs(tybalt, mercutio, sword).
hates(romeo, X):-
    stabs(X, mercutio, sword).