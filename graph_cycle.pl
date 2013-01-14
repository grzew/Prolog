arc(a,b).
arc(b,c).
arc(a,d).
arc(d,e).
arc(d,f).
arc(f,a).
arc(f,g).

go(X,X).
go(X,Y) :- arc(X,Z), go(Z,Y).


go1(X,X,_).
go1(X,Y,T):-arc(X,Z), not(member(Z,[X|T])), go1(Z,Y,[X|T]).

go2(X,X,T,[X|T]).
go2(X,Y,T,P) :- arc(X,Z), not(member(Z,[X|T])), go2(Z,Y,[X|T],P).

go3(X,X,A,[X]).
go3(X,Y,A,[X|P]) :- arc(X,Z), not(member(Z,[X|A])), go3(Z,Y,[X|A],P).