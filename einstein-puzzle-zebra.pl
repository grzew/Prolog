% Grzegorz Wieczorek 2013
%
% Answer for http://en.wikipedia.org/wiki/Zebra_Puzzle 

onstreet(X,s(X,_,_,_,_)).
onstreet(X,s(_,X,_,_,_)).
onstreet(X,s(_,_,X,_,_)).
onstreet(X,s(_,_,_,X,_)).
onstreet(X,s(_,_,_,_,X)).

middlehouse(X,s(_,_,X,_,_)).
firsthouse(X,s(X,_,_,_,_)).

toleft(X,Y,s(X,Y,_,_,_)).
toleft(X,Y,s(_,X,Y,_,_)).
toleft(X,Y,s(_,_,X,Y,_)).
toleft(X,Y,s(_,_,_,X,Y)).

toright(Y,X,s(X,Y,_,_,_)).
toright(Y,X,s(_,X,Y,_,_)).
toright(Y,X,s(_,_,X,Y,_)).
toright(Y,X,s(_,_,_,X,Y)).

nextto(X,Y,S) :- toleft(X,Y,S); toright(X,Y,S). 

clue1(S) :- onstreet(house(englishman,red,_,_,_),S).
clue2(S) :- onstreet(house(spaniard,_,dog,_,_),S).
clue3(S) :- onstreet(house(_,green,_,_,coffe),S).
clue4(S) :- onstreet(house(ukrainian,_,_,_,tea),S).
clue5(S) :- toright(house(_,green,_,_,_),house(_,ivory,_,_,_),S).
clue6(S) :- onstreet(house(_,_,snails,tennis,_),S).
clue7(S) :- onstreet(house(_,yellow,_,chess,_),S).
clue8(S) :- middlehouse(house(_,_,_,_,milk),S).
clue9(S) :- firsthouse(house(norwegian,_,_,_,_),S).
clue10(S) :- nextto(house(_,_,_,rugby,_),house(_,_,fox,_,_),S).
clue11(S) :- nextto(house(_,_,_,chess,_),house(_,_,horse,_,_),S).
clue12(S) :- onstreet(house(_,_,_,volleyball,orangejuice),S).
clue13(S) :- onstreet(house(japanese,_,_,go,_),S).
clue14(S) :- nextto(house(norwegian,_,_,_,_),house(_,blue,_,_,_),S).
clue15(S) :- nextto(house(_,_,_,_,tea),house(_,_,_,_,milo),S).

clue(S) :- clue1(S),clue2(S),clue3(S),clue4(S),clue5(S),clue6(S),clue7(S),clue8(S),clue9(S),clue10(S),clue11(S),clue12(S),clue13(S),clue14(S),clue15(S).
