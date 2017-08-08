populacaoDoPais(brasil,200).
populacaoDoPais(eua,320).
populacaoDoPais(canada,35).
populacaoDoPais(india,1200).
populacaoDoPais(china,1300).
populacaoDoPais(japao,127).
populacaoDoPais(russia,142).

territorioMkm2(brasil,8).
territorioMkm2(eua,9).
territorioMkm2(canada,9).
territorioMkm2(india,3).
territorioMkm2(china,9).
territorioMkm2(japao,1).
territorioMkm2(russia,17).

densidade(Pais, Densidade):- populacaoDoPais(Pais, Populacao), territorioMkm2(Pais,Territorio), Densidade is (Populacao/Territorio).

maiorDensidade(Pais1, Pais2, Res):- densidade(Pais1, Densidade1), densidade(Pais2, Densidade2), Densidade1 > Densidade2, Res = Pais1.
maiorDensidade(Pais1, Pais2, Res):- densidade(Pais1, Densidade1), densidade(Pais2, Densidade2), Densidade2 > Densidade1, Res = Pais2.

:- initialization(main).
main:- read(Pais1),
	read(Pais2),
	maiorDensidade(Pais1, Pais2, Res),
	write(Res), nl, halt(0).
     
     
     
    
     
     
     

