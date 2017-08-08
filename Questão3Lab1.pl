aluno(joao, 5.0, 7.0, 8.0).
aluno(maria, 6.0, 6.0, 6.0).
aluno(joana, 8.0, 5.1, 10).
aluno(mariana, 9.0, 9.0, 3.0).
aluno(cleuza, 8.5, 7.0, 8.6).
aluno(jose, 3.5, 3.0, 2.0).
aluno(mary, 10.0, 8.0, 7.0).

media(Nome, Media):- aluno(Nome, Nota1, Nota2, Nota3), Media is ((Nota1+Nota2+Nota3)/3).

situacao(Nome, Situacao):- media(Nome, Media), Situacao = "aprovado", Media >= 7.0, Media =<10.0.
situacao(Nome, Situacao):- media(Nome, Media), Situacao = "final", Media >= 4.0, Media =< 6.9. 
situacao(Nome, Situacao):- media(Nome, Media), Situacao = "reprovado", Media >= 0.0, Media =<3.9.

:- initialization(main).
main:-
     read(Nome), 
     situacao(Nome, Situacao),
     write(Situacao),nl,
     halt(0). 

