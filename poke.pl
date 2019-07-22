:-dynamic
	known/3.
go:-
pokemon(Name),
write('The pokemon is'),
write(Name),nl;
write('Sorry, pokemon cannot be identified'),nl.
pokemon(pikachu):-
  type(thunder),
  color(yellow).
pokemon(maril):-
  type(water),
  color(blue).
pokemon(winggull):-
  type(bird),
  color(blue).
pokemon(magikarp):-
  type(water),
  color(red).
pokemon(oddish):-
  type(grass),
  color(blue).

type(X):-ask(type,X).
color(X):-ask(color,X).

ask(A, V):-
  known(yes, A, V),
  !.
ask(A, V) :- 
  known(_, A, V),
  !, 
  fail.
ask(A, V) :- 
  known(yes, A, Val),
  V \== Val,
  !, fail.
ask(A, V):-
 write(A:V),
 write('? '),read(Y),
 asserta(known(Y, A, V)),
 Y==yes.
 


