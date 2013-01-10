% Grzegorz Wieczorek 2013
%
% Answer for lab2.2 from
% http://undergraduate.csse.uwa.edu.au/courses/CITS3212/labs/lab2.pdf

edge(p(2,2), p(3,1)).
edge(p(3,1), p(2,1)).
edge(p(1,2), p(2,2)).
edge(p(1,1), p(2,2)).
%edge(p(2,1), p(2,2)).
edge(p(2,2), p(2,3)).
edge(p(2,3), p(3,3)).

dpath(p(X,Y),p(X1,Y1)):-edge(p(X,Y),p(X1,Y1)).
dpath(p(X,Y),p(X2,Y2)):-edge(p(X,Y),p(X1,Y1)),dpath(p(X1,Y1),p(X2,Y2)).
