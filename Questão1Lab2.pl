inverte([],[]).
inverte([H|T],L):- inverte(T,R), concatena(R,[H],L).

concatena([],L,L).
concatena([X|L1],L2,[X|L3]):- concatena(L1,L2,L3). 
:- initialization(main).
main:-
read(X),
inverte(X,Y),
write(Y),nl,
halt(0).
