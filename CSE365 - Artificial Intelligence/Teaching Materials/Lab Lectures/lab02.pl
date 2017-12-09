loves(romeo, juliet).
loves(juliet, romeo) :- loves(romeo, juliet).



male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(don).
male(edward).

female(alice).
female(betsy).
female(diana).



happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

runs(albert):-
happy(albert).

dances(alice):-
happy(alice),
with_albert(alice).


does_alice_dance :- dances(alice),
	write('When Alice is happy and with Albert she dances').


swims(bob) :-
	happy(bob),
	near_water(bob).
parent(albert,bob).
parent(albert,besty).
parent(albert,bill).
parent(alice,bob).
parent(alice,besty).
parent(alice,bill).
parent(bob,carl).
parent(bob,charlie).
parent(bill, lary).

gc:-
	parent(alice, X),
	parent(X, GC),
	write('Alice grandchild is: '),
	write(GC), nl.


get_child:-
    parent(albert,X),
    parent(X,Y),
    write('Albert grandchild is '),
    write(Y), nl.

get_parent:-
  parent(X, carl),
  parent(X, charlie),
  format('~w ~s parent ~n',[X,"is the"]).

brother(bob, bill).

get_uncle:-
parent(X,carl),brother(X,Y),write(Y),nl,
format('~w~s uncle ~n',[Y,"is the"]).


get_grandchild:-
  parent(albert, X),
  parent(X, Y),
  write('Alberts grandchild is '),
  write(Y), nl.


batsman(abc).
batsman(def).
batsman(ghi).
batsman(jkl).
bowler(def).
bowler(pqr).
bowler(jkl).
bowler(xyz).





get_bothuser(N):-
  fb(N, X),
  fb(X, Y),
  whatsapp(Y),
  viber(Y),
  write(Y), nl.


get_whatsappuser(N):-
  fb(N, X),
  fb(X, Y),
  whatsapp(Y),
  write(Y), nl.


get_viberuser(N):-
  fb(N, X),
  fb(X, Y),
  viber(Y),
  write(Y), nl.


get_mutualfriend(N):-
  fb(N, X),
  fb(X, Y),
  write(Y), nl.


viber(shawon).
viber(puloma).
viber(rhythm).
viber(swapnil).
viber(dipto).

whatsapp(swapnil).
whatsapp(peu).
whatsapp(rhythm).
whatsapp(alamin).
whatsapp(zishan).

fb(swapnil, puloma).
fb(swapnil, rhythm).
fb(swapnil, alamin).

fb(peu, zishan).
fb(peu, dipto).

fb(puloma, shawon).
fb(puloma, rhythm).
fb(rhythm, alamin).

fb(zishan, heera).
fb(zishan, alamin).
fb(rhythm, peu).
