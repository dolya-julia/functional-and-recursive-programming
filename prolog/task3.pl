hanoi(N):- move(N, left, middle, right).
move(0,_,_,_):- !.
move(N, A, B, C):-
	M is N-1,
	move(M, A, C, B),
	report(A,B),
	move(M,C,B,A).
report(X,Y):-
	write([переместили, диск, со, штыря, X, на, штырь, Y]),nl.
