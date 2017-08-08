contem(_, []):- false.
contem(X, [X|_]).
contem(X, [_|Y]):- contem(X, Y).

soma([], 0).
soma([X|Y], Cont):- contem(X, Y), soma(Y, Cont).
soma([X|Y], Cont):- soma(Y, Cont1), Cont is (Cont1 + X).

:- initialization(main).
main:-
read(Lista), nl,
soma(Lista, Cont),
write(Cont),nl,
halt(0).
