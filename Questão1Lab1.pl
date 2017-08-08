rei(rhodi, 844, 878).
rei(anarawd, 878, 916).
rei(hywel_dda, 916, 950).
rei(lago_ap_idwal, 950, 979).
rei(hywal_ap_ieuaf, 979, 985).
rei(cadwallon, 985, 986).
rei(maredudd, 986, 999).
 
reinou(Ano,Rei):- rei(Rei, A, B), Ano >= A , Ano =< B.

:- initialization(main).
main:- 
     read(Ano),
     reinou(Ano, Rei),
     write(Rei),nl,
     halt(0). 
