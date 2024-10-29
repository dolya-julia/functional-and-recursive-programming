less(X,Y):- name(X,L), name(Y,M), less_1(L,M).

less_1([],[_|_]).
less_1([X|_],[Y|_]):- X<Y.
less_1([P|Q],[R|S]):- P=R,less_1(Q,S).
less_1([],[]).
less_1([_|_],[]).
