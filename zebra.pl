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

toright(X,Y,s(Y,X,_,_,_)).
toright(X,Y,s(_,Y,X,_,_)).
toright(X,Y,s(_,_,Y,X,_)).
toright(X,Y,s(_,_,_,Y,X)).

firstleft(X,s(X,_,_,_,_)).

nextto(X,Y,S) :- toleft(X,Y,S); toright(X,Y,S).


													%nation, color, animal, game, drink
clue1(S) :- onstreet(house(english,red,_,_,_),S).
clue2(S) :- onstreet(house(spaniard,_,dog,_,_),S).
clue3(S) :- onstreet(house(_,green,_,_,coffee),S).
clue4(S) :- onstreet(house(ukrainian,_,_,_,tea),S).
clue5(S) :- toright(house(_,green,_,_,_),house(_,ivory,_,_,_), S).
clue6(S) :- onstreet(house(_,_,snails,tenis,_),S).
clue7(S) :- onstreet(house(_,yellow,_,chess,_),S).
clue8(S) :- middlehouse(house(_,_,_,_,milk),S).
clue9(S) :- firstleft(house(norwegian,_,_,_,_),S).
clue10(S) :- nextto(house(_,_,_,rubgy,_),house(_,_,fox,_,_),S).
clue11(S) :- nextto(house(_,_,_,chess,_),house(_,_,horse,_,_),S).
clue12(S) :- onstreet(house(_,_,_,volleyball,orangejuice),S).
clue13(S) :- onstreet(house(japanese,_,_,go,_),S).
clue14(S) :- nextto(house(norwegian,_,_,_,_),house(_,blue,_,_,_),S).
clue15(S) :- nextto(house(_,_,_,_,tea),house(_,_,_,_,milo),S).

clue(S) :- clue1(S), clue2(S), clue3(S), clue4(S), clue5(S), clue6(S), clue7(S), clue8(S), clue9(S), clue10(S), clue11(S), clue12(S), clue13(S), clue14(S), clue15(S).