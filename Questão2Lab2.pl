deleteElem(_,[],[]).
deleteElem(E,[E|Y], Y).
deleteElem(E, [X|Y], [X|L]):- deleteElem(E, Y, L). 

:- initialization(main).

main:-
read(Lista),
read(Elem), nl,
deleteElem(Elem, Lista, L),
write(L),nl,
halt(0).
