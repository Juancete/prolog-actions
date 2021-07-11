esGroso(elTest).

:- begin_tests(github).
test(test_que_pasa) :-
	esGroso(elTest).
test(test_que_no_pasa, fail) :-
	esGroso(otro).
:- end_tests(github).