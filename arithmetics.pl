isnumber(zero).
isnumber(s(X)) :- isnumber(X).

isequal(X,X) :- isnumber(X).
isequal(s(X),s(Y)) :- isequal(X,Y).


add(zero,X,X) :- isnumber(X).
add(s(X),Y,s(Z)) :- add(X,Y,Z).

lessthanequal(zero,X) :- isnumber(X).
lessthanequal(s(X),s(Y)) :- lessthanequal(X,Y).


odd(s(zero)).
odd(s(s(X))) :- odd(X).

even(zero).
even(s(s(X))) :- even(X).

plus(zero, X, X) :- isnumber(X).
plus(s(X), Y, s(Z)) :- plus(X,Y,Z).

times(zero, X, zero) :- isnumber(X).
times(s(X),Y,Z) :- times(X, Y, Q), plus(Y,Q,Z).

%quotient(zero, zero, Q) :- isnumber(Q).
quotient(zero,zero, zero) :- false.
quotient(X,Y,Z) :- times(Z,Y,X).
%quotient(X,Y,Z) :- add(X,Y,W), add(W,Y,Z).
%quotient(X,Y,Z) :- add(X,Y,W), quotient(W,Y,Z).

remainder(X,Y,X) :- lessthanequal(X,Y).
remainder(X,Y,R) :- add(Z,Y,X), remainder(Z,Y,R).

fact(zero, s(zero)) :- true.
fact(s(zero), s(zero)) :- true.
fact(s(X), Y) :- fact(X, Z), times(Z,s(X),Y).

fibonacci(zero, s(zero)) :- true.
fibonacci(s(zero), s(zero)) :- true.
fibonacci(s(s(X)), Y) :- fibonacci(X,A), fibonacci(s(X),B), add(A,B,Y).

