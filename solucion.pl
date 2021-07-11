esGroso(elTest).
esGroso(siPasanLosTests).

leDieron(boby,hueso("cerdo",90)).
leDieron(boby,juguete("soga")).
leDieron(toby,hueso("vaca",45)).
leDieron(oliver,juguete("cascabel")).

esEnterrable(hueso(_,Largo)):- Largo < 40.
esEnterrable(juguete(_)).

puedePerderCosas(Perro):- leDieron(Perro,_),forall(leDieron(Perro,Algo),esEnterrable(Algo)).

seAburre(Perro):- leDieron(Perro,_),not((leDieron(Perro,Algo),esEnterrable(Algo))).

:- begin_tests(github).
test(test_que_pasa) :-
	esGroso(elTest).
test(test_que_no_pasa, fail) :-
	esGroso(otro).
test(puede_perder_cosas,[true(Perrow == oliver), nondet]) :-
  puedePerderCosas(Perrow).
:- end_tests(github).