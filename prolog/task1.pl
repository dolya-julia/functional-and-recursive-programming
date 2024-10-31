man(pavel).
man(jhon).
man(maks).
man(dima).
woman(masha).
woman(ann).
woman(alina).
woman(olga).
father(pavel,masha).
father(pavel, alina).
father(jhon, pavel).
mother(olga, pavel).
mother(ann, masha).
mother(ann, alina).
parent(pavel, masha).
parent(pavel, alina).
parent(ann, masha).
parent(ann, alina).
parent(jhon, pavel).
parent(olga, pavel).
different(ann, masha).

check_mother(X) :- parent(X,Y), woman(X).
check_father(X) :- parent(X,Y), man(X).
son(X) :- parent(Y, X), man(X).
sister(X, Y) :- parent(Z, X), parent(Z, Y), woman(X).
grandfather(X, Y) :- parent(X, Z), parent(Z, Y), man(X).
common_parents(X, Y) :- parent(Z, X), parent(Z,Y).
