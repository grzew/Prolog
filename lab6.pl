%play(q,w,e,r)
%play(ktorym ruszamy [b,w], poczatkowe ustawienie planszy, koncowe ustawienie planszy, sekwencja zmian na planszy)

%s(w,w,w,e,b,b,b) :- 

alternate(b,w).
alternate(w,b).

%play(w,s(w,w,w,e,b,b,b),s(b,b,b,e,w,w,w),S.

cornermove(C,1,2,s(C,e,X3,X4,X5,X6,X7),s(e,C,X3,X4,X5,X6,X7)).
cornermove(C,1,3,s(C,X2,e,X4,X5,X6,X7),s(e,X2,C,X4,X5,X6,X7)).
cornermove(C,7,6,s(X1,X2,X3,X4,X5,e,C),s(X1,X2,X3,X4,X5,C,e)).
cornermove(C,7,5,s(X1,X2,X3,X4,e,X6,C),s(X1,X2,X3,X4,C,X6,e)).

middlemove(C,4,2,s(X1,e,X3,C,X5,X6,X7),s(X1,C,X3,e,X5,X6,X7)).
middlemove(C,4,3,s(X1,X2,e,C,X5,X6,X7),s(X1,X2,C,e,X5,X6,X7)).
middlemove(C,4,6,s(X1,X2,X3,C,X5,e,X7),s(X1,X2,X3,e,X5,C,X7)).
middlemove(C,4,5,s(X1,X2,X3,C,e,X6,X7),s(X1,X2,X3,e,C,X6,X7)).

jump(C,2,6,s(X1,C,X3,X4,X5,e,X7),s(X1,e,X3,X4,X5,C,X7)).
jump(C,3,5,s(X1,X2,C,X4,e,X6,X7),s(X1,X2,e,X4,C,X6,X7)).

move(C,M,N,X,Y) :- cornermove(C,M,N,X,Y).
move(C,N,M,Y,X) :- cornermove(C,M,N,X,Y).
move(C,M,N,X,Y) :- middlemove(C,M,N,X,Y).
move(C,N,M,Y,X) :- middlemove(C,M,N,X,Y).
move(C,M,N,X,Y) :- jump(C,M,N,X,Y).
move(C,N,M,Y,X) :- jump(C,M,N,X,Y).

go3(C,X,X,A,[X]).
go3(C,X,Y,A,[X|P]) :- move(C,X,Z), not(member(Z,[X|A])), alternate(C,C1), go3(C1,Z,Y,[X|A],P).
