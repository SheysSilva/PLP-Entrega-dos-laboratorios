passaro(joao).
peixe(pedro).
minhoca(maria).
gato(miau).

pessoa(X):- !gato(X).
pessoa(X):- !peixe(X).
pessoa(X):- !minhoca(X).
pessoa(X):- !passaros(X).

gosta(X, Y):- passaro(X), minhoca(Y).
gosta(X, Y):- gato(X), peixe(Y).
gosta(X, Y):- gato(X), passaros(Y).

amigo(X, Y):- gosta(X, Y), gosta(Y, X).
amigo(Eu, Y):-gosta(Eu, Y), gosta(Y, Eu), gato(Y).

come(Gato, X):- gato(Gato), gosta(Gato, X), no (pessoa(X)).


