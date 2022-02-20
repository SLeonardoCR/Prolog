loves(romeo, juliet). %This is a fact

loves(juliet, romeo) :- 
    loves(romeo, juliet).

happy(albert).
happy(alice).

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

runs(albert) :-
    happy(albert).

dances(alice) :-
    happy(alice),
    with_albert(alice).

does_alice_dance :- 
    dances(alice),
    write('Alice dances when she is happy and with_albert').

swims(bob) :-
    happy(bob).

swims(bob) :-
    runs(albert).