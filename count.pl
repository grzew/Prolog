count(X, [], 0).
count(X,[X|T], N) :- count(X,T,M), N is M+1.
count(X,[_,T], N) :- count(X,T,N).