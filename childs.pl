parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(joe, jim).
parent(pat, jim).

female(pam).
male(tom).
male(bob).
female(liz).
female(ann).
female(pat).
male(joe).
male(jim).


child(X,Y):-parent(Y,X).
mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).

ancestor(X,Y):-parent(X,Y).
ancestor(X,Z):-parent(X,Y),ancestor(Y,Z).