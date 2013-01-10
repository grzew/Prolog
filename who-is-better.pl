% Grzegorz Wieczorek 2013
%
% The Problem:
% Three children ran in a race in their school sports day.  Peter did better than the person who ran in red.  Jack, wearing gold, did better than the child in green.  
%  Who won the race? 

didbetter(X,Y,s(X,Y,_)).
didbetter(X,Y,s(X,_,Y)).
didbetter(X,Y,s(_,X,Y)).

clue1(S) :- didbetter(boy(peter,_),boy(_,red),S).
clue2(S) :- didbetter(boy(jack,gold),boy(_,green),S).



